#!/bin/bash

function install() {
if ! command -v curl > /dev/null; then
    # Try to install curl
   sh -c "(apt update && apt install -y curl) || yum install -y curl || apk add curl"
fi
apt install zenity
chattr -i /usr/bin/tuxprotect
cp tuxprotect /usr/bin/tuxprotect
cp tuxprotectgui /usr/bin/tuxprotectgui
chmod +x /usr/bin/tuxprotect
chmod +x /usr/bin/tuxprotectgui
mkdir /usr/share/tuxprotect/
cp restartservices.sh /usr/share/tuxprotect/restartservices
cp notification.sh /usr/share/tuxprotect/notification
chmod +x /usr/share/tuxprotect/restartservices
chmod +x /usr/share/tuxprotect/notification
cp -r res /usr/share/tuxprotect/res/
bash /usr/bin/tuxprotect &
}

echo '
#######################################################
#                                                     #
#                      Tux Protect                     #
#                                                     #
#######################################################'

echo 'You are trying to install "Tux Protect". 
WARNING!!! This script was tested only with Ubuntu 22.10 ! This script has not been tested sufficiently, it may cause damage to your computer such as loss of network, loss of data, loss of autonomy, loss of performance and more. No uninstall tool will be provided.
This script updates itself, its behavior is subject to change over time. 
Do you agree anyway? If yes, write "I agree"'
echo '#######################################################'
read response

if [ "$response" = "I agree" ] || [ "$response" = "i agree" ]; then
    if [[ $EUID -ne 0 ]]; then
        echo "Error! You have tu run this script with root privilege, run sudo ./install.sh"
        exit 1
        else
        install
    fi
  echo "Tux Protect was installed succesffuly ! You're now protected :)"
else
  echo "The Script was not installed."
fi



