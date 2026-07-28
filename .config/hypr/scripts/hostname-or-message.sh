#!/bin/bash

# custom logic for displaying hostname or message for hyprlock (for that ly-esque display)
# message should be passed as first argument
# when authenticating, message is overridden with "authenticating..."

msg="$1"
LOG_FILE="/tmp/hyprlock-state.log"

if [ -f "$LOG_FILE" ]; then
    # last relevant state line: either "Authenticating" (Enter pressed) or "Failed attempts" (result known)
    last_state=$(grep -E '\]: (Authenticating|Failed attempts)' "$LOG_FILE" 2>/dev/null | tail -n 1)

    if [[ "$last_state" == *"Authenticating"* ]]; then
        echo "authenticating..."
        exit 0
    fi
fi

# normal display logic
if [ ${#msg} -eq "0" ]; then
    echo $USER@$(hostname)
else
    echo "$msg" | tr "[:upper:]" "[:lower:]"
fi
