# OneCloud ImmortalWrt Builder

## 功能
- 平台：OneCloud (ARMv7)
- 精简：Docker + 网页终端 ttyd
- 默认 LAN：192.168.2.2 / 网关 192.168.2.1
- 默认 root 无密码
- 内核版本：6.6 / 6.10 / 6.12
- 自动构建：每月 1 日和 16 日
- 自动生成 ZIP 包，包含 sysupgrade / img 文件

## 使用方法
1. 将 ZIP 解压到本地 GitHub 仓库
2. 推送到 GitHub
3. Actions → 选择 `Build OneCloud ImmortalWrt ZIP` → Run workflow
4. 编译完成后，Release 会生成 ZIP 文件
5. 下载 ZIP，直接刷入 OneCloud
