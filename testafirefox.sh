!#/bin/bash

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

