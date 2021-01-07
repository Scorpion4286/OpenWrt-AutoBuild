#!/bin/bash
#=================================================
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Modify: Scorpion4286
#=================================================

# Install AdGuard Home
cd ./package
git clone https://github.com/kongfl888/luci-app-adguardhome.git
cd ./luci-app-adguardhome
git checkout v1.8-20200824
cd ..

# Install Clash
git clone https://github.com/vernesong/OpenClash.git
cd ./OpenClash
git checkout v0.41.14-beta
cd ..

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
