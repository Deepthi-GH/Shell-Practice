#!/bin/bash

DISK_THRESHOLD=2   # usually 75 in real projects

df -hT | grep -v Filesystem | while read -r fs type size used avail use_percent mount
do
    # Remove % sign from use_percent
    usage=${use_percent%%%}

    if [ "$usage" -ge "$DISK_THRESHOLD" ]; then
        echo "Mount Path: $mount  Usage: ${usage}%"
    fi
done
