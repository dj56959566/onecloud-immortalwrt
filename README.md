# OneCloud ImmortalWrt 

## 功能
- 平台：OneCloud (ARMv7)
- 精简：Docker + 网页终端 ttyd
- 默认 LAN：192.168.2.2 / 网关 192.168.2.1
- 默认 root 无密码
- 内核版本：6.6 / 6.10 / 6.12
- 自动构建：每月 1 次
- 自动生成 ZIP 包，包含 sysupgrade / img 文件

📘 说明
- 项目	功能
- 🕓 触发时间	每月 1 日北京时间 00:00 自动构建
- 🧰 手动触发	可以从 Actions 手动触发并选择内核版本
- 🚀 自动发布	构建完成自动生成 GitHub Releases 版本
- 🧹 自动清理	仅保留最新一个发布版本（删除旧 tag 与 release）
- 💾 Artifacts	同时保留编译产物在 Actions 页中
- 🌐 默认配置	后台 IP 192.168.2.2，网关 192.168.2.1，用户名 root，密码为空
