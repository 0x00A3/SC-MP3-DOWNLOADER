#!/bin/sh

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

clear
case "$OSTYPE" in
  linux*)   echo `pip install soundcloud-dl` ;;
  msys*)    echo `pip install soundcloud-dl` ;;
esac

clear
BLUE=`tput setaf 6`
WHITE=`tput setaf 7`
reset=`tput sgr0`

echo "${WHITE}-----------------------------------------------------------------------------------"
echo "${BLUE}                             [+] Made By Birdlinux [+]                               "
echo "${WHITE}-----------------------------------------------------------------------------------"
echo "${WHITE}---------------------------------Soundcloud URL------------------------------------"
read -p "URL :" url
echo "${WHITE}-----------------------------------------------------------------------------------"
echo "${BLUE}------------Path to install the Playlist | Example: /home/user/Music---------------"
read -p "PATH:" path
echo "${WHITE}-----------------------------------------------------------------------------------"
sc-dl -u $url -d $path
echo "${WHITE}-----------------------------------------------------------------------------------"
echo "${WHITE}-----------------------------------------------------------------------------------"
echo "${BLUE}                                 [+] Installed [+]                               "
echo "${WHITE}-----------------------------------------------------------------------------------"
