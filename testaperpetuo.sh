#!/bin/bash
# Inclusion of kiosk “self management” script - testaperpetuo.sh, Tests if the firefoxperpetuo.sh process is on-air,
# if the answer is positive, start the browser process, if not reboot the machine. Put script inside /bin/ folder,
# give execute permission on the file, configure user crontab 0-59 / 10 6-23 * * 1-5 /bin/testaperpetuo.sh
# Este Script testa se o firefoxperpetuo está no ar.

var=`/bin/ps -u kioskcpd | /bin/grep firefoxperpetuo | /usr/bin/wc -l`
if [ $var == 1 ] ; then
      echo " "
else
      /bin/reboot
fi

