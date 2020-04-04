#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX https://p3terx.com
# Modify: Scorpion4286
#=================================================

# Modify default IP
sed -i 's/192.168.1.1/172.16.100.1/g' package/base-files/files/bin/config_generate
# Change Time Zone
sed -i 's/timezone='UTC'/timezone='CST-8'/g' package/base-files/files/bin/config_generate
# Change NTP Server
sed -i 's/0.openwrt.pool.ntp.org/cn.ntp.org.cn/g' package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/ntp.aliyun.com/g' package/base-files/files/bin/config_generate

# Copy config files
cp -f -r ./files ./package/base-files

# Install AdGuard Home
cd ./package
git clone https://github.com/Scorpion4286/AdGuard_OpenWrt.git
git clone https://github.com/happyzhang1995/luci-app-adguardhome.git

# Install Luci For Clash
git clone https://github.com/frainzy1477/luci-app-clash.git

cd .. && ./scripts/feeds install -a
