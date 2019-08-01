
docker run -d \
    -v /webroot/srv:/webroot \
    -v /config/srv:/config \
    -p 8080:8080 \
    anrighthand/rpi-caddy
