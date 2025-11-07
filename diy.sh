#!/bin/bash
# ============================================
# OneCloud ImmortalWrt 自定义脚本 (diy.sh)
# 内核：6.0 / 默认后台：192.168.2.2
# ============================================

echo "✅ 开始执行 diy.sh 自定义设置 ..."

# 1. 修改默认 IP 与网关
sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate
sed -i "/set network.lan.ipaddr='192.168.2.2'/a\set network.lan.gateway='192.168.2.1'" package/base-files/files/bin/config_generate

# 2. 修改主机名
sed -i 's/OpenWrt/OneCloud/g' package/base-files/files/bin/config_generate

# 3. 拉取第三方插件
mkdir -p package/custom
pushd package/custom

# 网络优化与工具
git clone --depth=1 https://github.com/vernesong/OpenClash.git
git clone --depth=1 https://github.com/lisaac/luci-app-diskman.git
git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 https://github.com/EOYOHOO/UA2F.git
git clone --depth=1 https://github.com/EOYOHOO/rkp-ipid.git

# Docker 支持
git clone --depth=1 https://github.com/lisaac/luci-app-dockerman.git
git clone --depth=1 https://github.com/lisaac/luci-lib-docker.git

popd

# 4. 清理无用 git 目录节省空间
find . -name ".git" -type d -exec rm -rf {} +

echo "✅ diy.sh 执行完成"
