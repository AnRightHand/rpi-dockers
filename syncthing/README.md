
Syncthing
form
https://github.com/syncthing/syncthing

docker run \
  --name=syncthing \
  -p 8384:8384 \
  -p 22000:22000 \
  -p 21027:21027/udp \
  -v /path/to/appdata/config:/config \
  -v /path/to/sync:/sync \
  -v /path/to/data1:/data1 \
  -v /path/to/data2:/data2 \
  --restart unless-stopped \
  anrighthand/syncthing
