#!/bin/bash
if [ "$LANG" = "fr_FR.UTF-8" ]; then
abort="Interruptions des services..."
restart="Redémarrage, veuillez patienter"
start="Démarrage des services..."
finished="Terminé"
elif [ "$LANG" = "he_IL.UTF-8" ]; then
abort="עצירת שירותים..."
restart="איתחול מחדש, נא להמתין"
start="הפעלת שירותים..."
finished"הסתיים"
else
abort="Stop services"
restart="Restarting, Please wait..."
start="Starting services..."
finished="Finished"
fi

(
killall tuxprotect
echo "10" ; sleep 1
echo "# $abort" ; sleep 4
echo "50" ; sleep 1
echo "# $start" ; sleep 1
echo "60" ; sleep 11
echo "100" ; sleep 1
echo "# Finished" ; sleep 1
) |
zenity --progress \
  --title="Tux Protect" \
  --text="$restart" \
  --percentage=0