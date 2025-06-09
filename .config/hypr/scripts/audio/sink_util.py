#!/usr/bin/env python
import subprocess

def clean_input() -> str:
    output = str(subprocess.check_output("wpctl status", shell=True, encoding='utf-8'))
    lines = output.replace("├", "").replace("─", "").replace("│", "").replace("└", "").splitlines()
    return lines


def get_sinks_raw() -> list[str]:
    lines = clean_input()
    start, end = None, None

    for idx, line in enumerate(lines):
        if "Sinks:" in line:
            start = idx
        if "Sources:" in line:
            end = idx
            break

    sinks = lines[start + 1:end - 1]
    for idx, sink in enumerate(sinks):
        sinks[idx] = sink.split("[vol:")[0].strip()

    return sinks

def get_sinks() -> list[[int, str]]:
    """Returns list of tuple of sink ids and sink names starting with active sink and wrapping around the list of sinks."""
    sinks = get_sinks_raw()
    out = []
    idx = 0

    for sink in sinks:
        id, name = sink.split(".")
        name = name.strip()

        if id[0] == "*":
            idx = 0
            id = int(id[1:].replace(" ", ""))
        out.insert(idx, [id, name])
        idx += 1

    return out


def current_sink() -> [str, int]:
    return get_sinks()[0]

def current_sink_id() -> int:
    return current_sink()[0]

def current_sink_name() -> str:
    return current_sink()[1]

