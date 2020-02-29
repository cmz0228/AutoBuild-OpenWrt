#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
  sed -i 's/192.168.1.1/192.168.1.2/g' openwrt/package/base-files/files/bin/config_generate
  sed -i 's/KERNEL_PATCHVER:=4.19/KERNEL_PATCHVER:=4.14/g' openwrt/target/linux/x86/Makefile
  sed -i 's/R9.12.31/R9.12.31_dev_Len yu/g'  openwrt/package/lean/default-settings/files/zzz-default-settings
