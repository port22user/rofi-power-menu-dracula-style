#!/bin/bash

# Define options with icons (requires a Nerd Font installed)
shutdown=" Shutdown"
reboot=" Reboot"
lock=" Lock"
suspend=" Suspend"
logout=" Logout"

# Combine options into a single list
options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

# Launch Rofi in dmenu mode and capture the selection
chosen="$(echo -e "$options" | rofi -dmenu -i -p -theme "~/.config/rofi/"style-powermenu.rasi)"

# Perform actions based on selection
case $chosen in
    $shutdown)
        systemctl poweroff ;;
    $reboot)
        systemctl reboot ;;
    $lock)
        loginctl lock-session $XDG_SESSION_ID ;;
    $suspend)
        systemctl suspend ;;
    $logout)
                          ;; # Your WM or DE 
esac

