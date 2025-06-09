#!/usr/bin/env python

from sink_util import get_sink_ids

def current_sink() -> str:
    sinks = get_sink_ids()
    for sink in sinks:
        if sink[0] == "*":
            return sink[1:].replace(" ", "")

    return 0

