#!/bin/bash
# Este Script testa se o firefoxperpetuo está no ar.
var=`/bin/ps -u kioskcpd | /bin/grep firefoxperpetuo | /usr/bin/wc -l`
if [ $var == 1 ] ; then
	echo " "
else
	/bin/reboot
fi

