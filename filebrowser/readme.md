FileBrowser

cd /config
创建配置文件
vi filebrowser.json
配置文件内容如下
{
  "address": "0.0.0.0",
  "port": 80,
  "locale": "zh-cn",
  "baseURL": "/",
  "log": "stdout",
  "database": "/config/database.db",
  "root": "/srv", // 文件管理根目录
  "cert": "/config/ssl.cer", // 如果不需要 https 请去掉
  "key": "/config/ssl.key" //   cert 和 key 两行配置
}
创建一个 db 文件

touch database.db


docker run \
-v /your/path:/srv \
-v /your/path/to/config:/config \
-p 8888:80 \
-p 8443:443 \
--name filebrowser \
--restart=always \
anrighthand/rpi-filebrowser
