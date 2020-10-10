#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default




# src-git helloworld https://github.com/fw876/helloworld
# src-git kenzo https://github.com/kenzok8/openwrt-packages
# src-git small https://github.com/kenzok8/small
# src-git mypackages https://github.com/siropboy/mypackages
# src-git destan19 https://github.com/destan19/OpenAppFilter
# src-git branch https://github.com/openwrt-1983/openwrt-branch




git clone https://github.com/fw876/helloworld feeds/helloworld

git clone https://github.com/kenzok8/openwrt-packages package/kenzo

git clone https://github.com/kenzok8/small package/small

git clone https://github.com/siropboy/mypackages package/mypackages

git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan

git clone https://github.com/destan19/OpenAppFilter package/destan19

git clone https://github.com/openwrt-1983/openwrt-branch package/branch

cp package/branch/patch/add-thermal-driver-for-H6H5H3A64A83TR40.patch target/linux/sunxi/patches-5.4/add-thermal-driver-for-H6H5H3A64A83TR40.patch
cp package/branch/patch/add-YAML-schema-for-sun8i-thermal-driver-bindings.patch target/linux/sunxi/patches-5.4/add-YAML-schema-for-sun8i-thermal-driver-bindings.patch
cp package/branch/patch/sun8i-h3-Add-thermal-sensor-and-thermal-zones.patch target/linux/sunxi/patches-5.4/sun8i-h3-Add-thermal-sensor-and-thermal-zones.patch


