#!/bin/bash
# diy.sh - 自定义固件设置
# $1 = 内核版本

KERNEL_VERSION=${1:-6.6}

# 设置内核
sed -i "s/^CONFIG_LINUX_.*$/CONFIG_LINUX_${KERNEL_VERSION}=y/" .config

# 设置默认 LAN IP 和网关
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate
sed -i '/set network.lan.ipaddr/a\        set network.lan.gateway=192.168.2.1' package/base-files/files/bin/config_generate
