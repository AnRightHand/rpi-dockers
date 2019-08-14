#/bin/sh

curl -sSL -o /app/aria2.conf https://raw.githubusercontent.com/AnRightHand/rpi-dockers/master/aria2/aria2.conf
mv -n /app/aria2.conf /config/aria2.conf
touch /config/aria2.session

/app/aria2c --conf-path=/config/aria2.conf

