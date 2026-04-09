#!/usr/bin/env bash

if pgrep -x wf-recorder >/dev/null; then
  pkill wf-recorder
  notify-send "Recording stopped"
else
  FILE=~/Videos/Recordings/rec_$(date +%F_%H-%M-%S).mp4
  wf-recorder -f "$FILE" &
  notify-send "Recording started" "$FILE"
fi
