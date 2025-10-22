#!/bin/bash
#=================================================
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Modify: Scorpion4286
#=================================================

# Modify default IP
sed -i 's/192.168.1.1/172.16.10.251/g' package/base-files/files/bin/config_generate
# Change NTP Server
sed -i 's/0.openwrt.pool.ntp.org/cn.ntp.org.cn/g' package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/ntp.aliyun.com/g' package/base-files/files/bin/config_generate
