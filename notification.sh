#!/bin/bash
status_path="/usr/share/tuxprotect/res/status"
status=$(cat /usr/share/tuxprotect/res/status)
lastuser=$(last -n1 | head -n 1)
read -r user _ <<< "$lastuser"
id=$(id -u $user)

if [ "$LANG" = "fr_FR.UTF-8" ]; then
enabled="Les notifications ont été activées"
disabled="Les notifications ont été désactivées"
elif [ "$LANG" = "he_IL.UTF-8" ]; then
enabled="העדכונים הופעלו"
disabled="העדכונים הושבתו"
else
enabled="Notifications are enabled"
disabled="Notifications are disabled"
fi

if [ "$status" = "1" ]; then
echo "0" > $status_path
sudo -u $user DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$id/bus notify-send "Tux Protect" "$disabled" -i "/usr/share/tuxprotect/res/icons/shieldb.png"
else
echo "1" > $status_path
sudo -u $user DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$id/bus notify-send "Tux Protect" "$enabled" -i "/usr/share/tuxprotect/res/icons/shield.png" -t 2000
fi