#!/bin/bash

rootcheck(){
  if [ "$EUID" -ne 0 ]
    then echo "You are not root/sudo/doas. Come back when you are."
    exit
  fi
}

if [ "$#" != "0" ]; then
    echo -e "\nThis script requires no arguments.\n"
    exit
fi

rootcheck

if [ -d /usr/portdeb ]; then
  echo -e "\nIt seems /usr/portdeb already exists."
  echo -e "If you are re-installing remove this directory and try again.\n"
  exit
else      
  mkdir /usr/portdeb
fi

if dpkg -s devscripts dpkg-dev fakeroot shc 2&>1 2>/dev/null; then
  break 2>/dev/null
else
  apt install dpkg-dev devscripts fakeroot -y
fi

chown -Rv _apt:root /usr/portdeb
chmod -Rv 700 /usr/portdeb
shc -f portdeb -o portdeb
cp portdeb /usr/bin
chmod +x /usr/bin/portdeb
rm portdeb.x.c
echo -e "\nInstall complete.\n"
