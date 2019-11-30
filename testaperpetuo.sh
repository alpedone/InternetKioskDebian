#!/bin/bash
var=`/bin/ps -u kioskcpd | /bin/grep firefoxperpetuo | /usr/bin/wc -l`
if [ $var == 1 ] ; then
      echo " "
else
      /bin/reboot
fi

