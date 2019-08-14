#/bin/sh

mkdir /app 
curl -sSL -o /app/Caddyfile https://raw.githubusercontent.com/AnRightHand/rpi-dockers/master/caddy/Caddyfile
mv -n /app/Caddyfile /config/Caddyfile

caddy -conf /config/Caddyfile