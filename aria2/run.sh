#/bin/sh
if [[ ! -f "/config/aria2.conf" ]]; then
  curl -f -sSL -o /app/aria2.conf https://raw.githubusercontent.com/aymtools/rpi-dockers/master/aria2/aria2.conf || true
  mv -n /app/aria2.conf /config/aria2.conf
fi
if [[ ! -f "/config/aria2.session" ]]; then
  touch /config/aria2.session
fi

/app/aria2c --conf-path=/config/aria2.conf

