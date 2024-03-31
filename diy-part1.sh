#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git helloworld https://github.com/sl833h0/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
shopt -s extglob

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

#sh -c "curl -sfL https://patch-diff.githubusercontent.com/raw/openwrt/openwrt/pull/10778.patch | git apply -p1"

curl -sfL https://raw.githubusercontent.com/coolsnowwolf/lede/master/target/linux/ipq40xx/patches-5.10/999-ipq40xx-unlock-cpu-frequency.patch -o target/linux/ipq40xx/patches-5.15/999-ipq40xx-unlock-cpu-frequency.patch
