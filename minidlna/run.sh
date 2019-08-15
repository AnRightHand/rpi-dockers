#/bin/sh

mkdir -p /app 
if [[ ! -f "/config/minidlna.conf" ]]; then
  curl -sSL -o /app/minidlna.conf https://raw.githubusercontent.com/AnRightHand/rpi-dockers/master/minidlna/minidlna.conf || true
  mv -n /app/minidlna.conf /config/minidlna.conf
fi
  
/usr/sbin/minidlnad -f /config/minidlna.conf -S