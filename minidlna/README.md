MiniDLNA from https://github.com/geekduck/docker-minidlna
docker run -d --name minidlna \
  --net=host \
  -p 8200:8200 \
  -p 1900:1900/udp \
  -v <path_to_music_dir>:/opt/Music \
  -v <path_to_videos_dir>:/opt/Videos \
  -v <path_to_picutres_dir>:/opt/Pictures \
  -v <path_to_config_dir>/minidlna.conf:/etc/minidlna.conf \
  anrighthand/rpi-minidlna