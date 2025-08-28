#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.10/g' package/base-files/files/bin/config_generate

# 添加删除软件
rm -rf feeds/packages/net/{chinadns-ng,hysteria,xray-core,v2ray-core,v2ray-geodata,sing-box,shadowsocks-rust,shadowsocksr-libev}
rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/luci-app-ssr-plus
rm -rf feeds/luci/applications/luci-app-openclash

git clone -b dev --depth 1 https://github.com/vernesong/OpenClash package/OpenClash
#git clone https://github.com/nikkinikki-org/OpenWrt-nikki  package/OpenWrt-nikki
git clone https://github.com/nikkinikki-org/OpenWrt-momo  package/OpenWrt-momo
