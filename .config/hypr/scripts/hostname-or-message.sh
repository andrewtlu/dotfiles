#!/bin/bash

# custom logic for displaying hostname or message for hyprlock (for that ly-esque display)
# message should be passed as first argument
# when authenticating, message is overridden with "authenticating..."

msg="$1"

# check if pam is authenticating (default 1 module, if > 1 then is authenticating)
HYPRLOCK_PID=$(pgrep hyprlock)
if [ -n "$HYPRLOCK_PID" ]; then
    PAM_MODULE_COUNT=$(lsof -p $HYPRLOCK_PID 2>/dev/null | grep -c "/usr/lib/security/pam_")

    if [ "$PAM_MODULE_COUNT" -gt 1 ]; then
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
