#!/usr/bin/env python
import subprocess
import re
from sys import argv


SOURCE_TYPE = "media.class"
SOURCE = "Audio/Sink"


def wpctl_status_lines() -> str:
    """Get partially cleaned wpctl output"""
    output = str(subprocess.check_output("wpctl status", shell=True, encoding="utf-8"))
    return [
        line.strip()
        for line in output.replace("├", "")
        .replace("─", "")
        .replace("│", "")
        .replace("└", "")
        .splitlines()
    ]


def get_node_property(node_id: int, prop: str) -> str | None:
    """Fetch the specified property of a given wpctl node."""
    output = subprocess.check_output(
        f"wpctl inspect {node_id}", shell=True, encoding="utf-8"
    )
    for line in output.splitlines():
        if prop in line:
            return line.split("=")[1].strip().replace('"', "")
    return None


def extract_category(lines: list[str], section: str) -> list[str]:
    """Return nodes within a category, stripping extra information."""
    start = False
    nodes = []
    for line in lines:
        if f"{section}:" in line:
            start = True
        elif start:
            if len(line) == 0 or line[len(line) - 1] == ":":
                return nodes
            test = line.split(".")[0]
            if test[0] == "*" or test.isnumeric():
                nodes.append(line.split("[")[0].strip())

    return nodes


def parse_node_line(line: str) -> tuple[str, str, bool] | None:
    """
    Parse a node line from wpctl status output.
    Returns (id, raw_name, is_active) or None if the line isn't a node entry.
    """
    is_active = line.startswith("*")
    line = line.lstrip("*").strip()
    match = re.match(r"^(\d+)\.\s+(.+?)\s+\[", line)
    if not match:
        return None
    return match.group(1), match.group(2).strip(), is_active


def get_nodes() -> list[tuple[int, str]]:
    """
    Returns (id, display_name) pairs for all audio nodes.
    Active node is returned first and all other output nodes follow, wrapping around.
    """
    lines = wpctl_status_lines()
    nodes = extract_category(lines, "Sinks") + extract_category(lines, "Filters")
    out = []
    idx = 0

    for node in nodes:
        id, name = node.split(".", 1)
        name = name.strip()

        if id[0] == "*":
            idx = 0
            id = int(id[1:].replace(" ", ""))

        if get_node_property(id, SOURCE_TYPE) != SOURCE:
            continue

        out.insert(idx, [id, name])
        idx += 1

    return out


def current_node() -> tuple[str, str]:
    return get_nodes()[0]


def current_node_id() -> int:
    return current_node()[0]


def current_node_name() -> str:
    return current_node()[1]


def switch_node(id: str = "-1") -> None:
    """Switches to the next available audio node."""
    nodes = get_nodes()

    if len(nodes) <= 1:
        return

    ids = [node[0] for node in nodes]
    selected = id if id in ids else nodes[1][0]
    subprocess.run(f"wpctl set-default {selected}", shell=True)


if __name__ == "__main__":
    if len(argv) == 1:
        print(current_node_name())
    if len(argv) == 2:
        switch_node(argv[1])
