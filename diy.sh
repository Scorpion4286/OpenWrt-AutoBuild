#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX https://p3terx.com
# Modify: Scorpion4286
#=================================================

# Modify default IP
sed -i 's/192.168.1.1/172.16.100.15/g' package/base-files/files/bin/config_generate
# Change NTP Server
sed -i 's/0.openwrt.pool.ntp.org/cn.ntp.org.cn/g' package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/ntp.aliyun.com/g' package/base-files/files/bin/config_generate

# Copy config files
cp -f -r ./files ./package/base-files

# Install AdGuard Home
cd ./package
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git

# Install Clash
git clone https://github.com/vernesong/OpenClash.git
cd ./OpenClash
git checkout v0.40.7-beta
cd ..

cd .. && ./scripts/feeds install -a
