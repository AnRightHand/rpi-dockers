#/bin/sh

curl -sSL -o /app/filebrowser.json https://raw.githubusercontent.com/AnRightHand/rpi-dockers/master/filebrowser/filebrowser.json
mv -n /app/filebrowser.json /.filebrowser.json
touch /database.db

/app/filebrowser --config /.filebrowser.json