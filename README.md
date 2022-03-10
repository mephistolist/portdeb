Portdeb is a ports-like system for Debian. 
It is not meant to maintain an entire system and dependencies, but the specific software you choose. 
Portdeb works with apt to ensure apt does not overwrite its changes. 
However, upgrading with apt will still be needed to ensure software not maintained by portdeb is up to date.  

Install the following dependencies:

apt install dpkg-dev devscripts fakeroot -y

Create the following dir and add permissions:

mkdir /usr/portdeb;
chown -Rv _apt:root /usr/portdeb;
chmod -Rv 700 /usr/portdeb

Copy script to /usr/bin and add permissions:

cp /path/to/script/portdeb /usr/bin;
chmod +x /usr/bin/portdeb

Portdeb is a ports-like system for Debian.

Usage:

portdeb -a program_name : Download, Build, Install, Lock and Clean (All)
portdeb -s program_name : Download source to /usr/portdeb
portdeb -b program_name : Build program in /usr/portdeb/program_name
portdeb -i program_name : Install a built program in /usr/portdeb/program_name
portdeb -l program_name : Lock the deb package to prevent upgrades
portdeb -d program_name : Delete source and unlock package
portdeb -u : Check and offer upgrades for ports available 
portdeb -r : Remove unneeded dependencies from builds
portdeb -c : Clean unecessary files from builds

Copyright 2022 by Jon Cox of teamsloth.net under GNU GPL3 License. 
A copy of this license may be found here: https://www.gnu.org/licenses/gpl-3.0.en.html 
