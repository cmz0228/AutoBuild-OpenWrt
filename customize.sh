#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.100.18/g' openwrt/package/base-files/files/bin/config_generate
#git clone https://github.com/Leo-Jo/luci-app-vssr-coexist package/luci-app-vssr-coexist
git clone https://github.com/pymumu/smartdns.git package/smartdns
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/rosywrt/luci-theme-rosy.git
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
