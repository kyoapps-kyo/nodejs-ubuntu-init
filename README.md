![Alt top img](https://cloud.githubusercontent.com/assets/324764/18408949/02d3cb2a-7770-11e6-96e2-54bbcfbfa1d1.png)

# 简介

适用于 Ubuntu 22.04 的 MEVN 安装脚本，并设置了国内镜像加速。

请确保所有命令都以 root 账户执行，如果登录账户不是 root，则需要执行 sudo -H -s 切换为 root 账户后再下载安装。

软件列表
- Git
- Nginx
- Nodejs 18
- Yarn
- Redis

# 安装

## Ubuntu 22.04
wget -qO- https://raw.githubusercontent.com/kyoapps-kyo/nodejs-ubuntu-init/master/download.sh - | bash

## 特别说明
此脚本会将安装脚本下载到当前用户的 Home 目录下的 nodejs-ubuntu-init 目录并自动执行安装脚本。

如果当前不是 root 账户则不会自动安装，需要切换到 root 账户后执行 ./22.04/install.sh。