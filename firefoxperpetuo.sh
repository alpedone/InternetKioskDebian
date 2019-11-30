#!/bin/bash
# Se o Firefox for fechado, o processo do navegador executa novamente.
#Colocar o script no /usr/bin/firefoxperpetuo.sh e dar permissão de execução no arquivo:
#chmod +x /usr/bin/firefoxperpetuo.sh

xsetroot -solid white &
# firfox em modo perpétuo
while true ; do
#/usr/bin/firefox-3.0
/usr/bin/iceweasel
done 
