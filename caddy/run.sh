#/bin/sh

mkdir -p /app
if [[ ! -f "/config/Caddyfile" ]]; then
  curl -f -sSL -o /app/Caddyfile https://raw.githubusercontent.com/aymtools/rpi-dockers/master/caddy/Caddyfile || true
  mv -n /app/Caddyfile /config/Caddyfile
fi

caddy -conf /config/Caddyfile
