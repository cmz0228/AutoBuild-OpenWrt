#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
echo '下载passwall'
git clone https://github.com/Lienol/openwrt-package.git package/openwrt-package

echo '下载smartdns'
git clone https://github.com/pymumu/smartdns.git

echo '下载新的主题lignt and night'
git clone https://github.com/Aslin-Ameng/luci-theme-Light.git package/luci-theme-Light
git clone https://github.com/Aslin-Ameng/luci-theme-Night.git package/luci-theme-Night
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
