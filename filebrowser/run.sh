#/bin/sh

if [[ ! -f "/config/filebrowser.json" ]]; then
  curl -f -sSL -o /app/filebrowser.json https://raw.githubusercontent.com/aymtools/rpi-dockers/master/filebrowser/filebrowser.json || true
  mv -n /app/filebrowser.json /config/filebrowser.json
fi
if [[ ! -f "/config/database.db" ]]; then
  touch /config/database.db
fi

/app/filebrowser --config /config/filebrowser.json
