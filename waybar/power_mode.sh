#!/bin/bash

# Get current profile
current=$(powerprofilesctl get)

case $1 in
    cycle)
        if [ "$current" = "performance" ]; then
            powerprofilesctl set balanced
        elif [ "$current" = "balanced" ]; then
            powerprofilesctl set power-saver
        else
            powerprofilesctl set performance
        fi
        ;;
esac

# Output for Waybar
profile=$(powerprofilesctl get)
case $profile in
    performance) icon="⚡" ;;
    balanced)    icon="⚖" ;;
    power-saver) icon="🌿" ;;
    *)           icon="⚡" ;;
esac

echo "{\"text\": \"$icon $profile\", \"tooltip\": \"Power Mode: $profile\"}"
