Portdeb is a ports-like system for Debian. It is not meant to maintain an entire system and dependencies, but the specific software you choose. Portdeb works with apt to ensure apt does not overwrite its changes. However, upgrading with apt will still be needed to ensure software not maintained by portdeb is up to date.  

Download with the following and change into directory:
```
git clone https://github.com/mephistolist/portdeb.git && cd portdeb
```
Add excute permissions to the install script and run it:
```
chmod +x installer.sh && sudo ./installer.sh 
```
Usage:
```
portdeb -a program_name : Download, Build, Install, Lock and Clean (All)  
portdeb -s program_name : Download source to /usr/portdeb  
portdeb -b program_name : Build program in /usr/portdeb/program_name  
portdeb -i program_name : Install a built program in /usr/portdeb/program_name  
portdeb -l program_name : Lock the deb package to prevent upgrades  
portdeb -d program_name : Delete source and unlock package  
portdeb -u : Check and offer upgrades for ports available   
portdeb -r : Remove unneeded dependencies from builds  
portdeb -c : Clean unecessary files from builds  
```

See https://github.com/mephistolist/portdeb/wiki for more information, contact and trouble-shooting.
