#/bin/sh

mkdir /app 
curl -sSL -o /app/minidlna.conf https://raw.githubusercontent.com/AnRightHand/rpi-dockers/master/minidlna/minidlna.conf
mv -n /app/minidlna.conf /config/minidlna.conf
  
/usr/sbin/minidlnad -f /config/minidlna.conf -S