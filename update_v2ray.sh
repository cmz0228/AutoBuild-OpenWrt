#!/usr/bin/bash
cd /tmp/tmp
wget https://github.com/v2ray/v2ray-core/releases/download/v4.22.1/v2ray-linux-64.zip
echo 正在解压文件...
unzip -o v2ray-linux-64.zip
mv -f /tmp/tmp/v2ctl  /usr/bin/v2ray
mv -f /tmp/tmp/v2ray  /usr/bin/v2ray
chmod +x /usr/bin/v2ray/v2ctl
chmod +x /usr/bin/v2ray/v2ray
echo 请到路由后台程序保存应用一下XXSSRplus+
sleep 5
#运行命令：bash -c "$(wget -O- https://raw.githubusercontent.com/Blueplanet20120/Openwrt-atuo/master/update_v2ray.sh)"
exit 0
