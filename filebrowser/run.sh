#/bin/sh

curl -sSL -o /app/filebrowser.json https://raw.githubusercontent.com/AnRightHand/rpi-dockers/master/filebrowser/filebrowser.json
mv -n /app/filebrowser.json /config/filebrowser.json
touch /config/database.db

/app/filebrowser --config /config/filebrowser.json