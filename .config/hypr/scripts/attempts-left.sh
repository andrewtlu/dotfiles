#!/bin/bash

# prints the number attempts remaining or time before user can retry logging in

attempts="$1"
maxattempts="3"
unlocktime=600

if [ $attempts -lt $maxattempts ]; then
    echo $((maxattempts - attempts))
else
    echo "max attempts reached"
fi
