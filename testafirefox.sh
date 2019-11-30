!#/bin/bash

#Inclusion of kiosk “self management” script - testefirefox.sh
#Tests if the Iceweasel process is not caching, more than 15 minutes, if the answer is positive, start the browser process.
#Put script in /bin/ folder, give execute permission on file
#chmod + x /bin/testafirefox.sh,
#Put in the user's crontab “User”, with the following line:
#0-59 / 10 6-23 * * 1-5 /bin/testafirefox.sh


  if [ -z `/usr/bin/find /home/kioskcpd/.mozilla/firefox/t3o49nmw.default/Cache -name *001* -mtime -1` ] ; then
# cache mais velho que um dia
     /usr/bin/killall firefox-bin
  else
     if [ -z `/usr/bin/find /home/kioskcpd/.mozilla/firefox/t3o49nmw.default/Cache -name *001* -mmin -15` ] ; then
# cache mais velho que 15 minutos
      /usr/bin/killall firefox-bin
   else
# cache no ar
      echo ""
   fi
fi
exit

