#!/usr/bin/env bash
dir="$HOME/.config/rofi"
theme='style-5'

## Run
rofi \
    -show drun -p \
    -theme ${dir}/${theme}.rasi
    -me-select-entry '' \
       -me-accept-entry 'MousePrimary'
