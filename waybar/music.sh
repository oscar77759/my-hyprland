#!/bin/bash

playerctl metadata --format '{"text": "{{artist}} - {{title}}", "tooltip": "{{playerName}}: {{artist}} - {{title}} ({{status}})", "alt": "{{status}}"}' 2>/dev/null || echo '{"text": "No music playing", "tooltip": "Nothing playing", "class": "paused"}'
