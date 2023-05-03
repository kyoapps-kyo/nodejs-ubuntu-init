#!/bin/bash

{ # this ensures the entire script is downloaded #

lsb_release -d | grep 'Ubuntu' >& /dev/null
[[ $? -ne 0 ]] && { echo "仅支持 Ubuntu 22.04 系统"; exit 1; }

DISTRO=$(lsb_release -c -s)
[[ ${DISTRO} -ne "Jammy" ]] && { echo "仅支持 Ubuntu 22.04 系统"; exit 1; }

green="\e[1;32m"
nc="\e[0m"

echo -e "${green}===> 开始下载...${nc}"
cd $HOME
wget -q https://github.com/kyoapps-kyo/nodejs-ubuntu-init/archive/master.tar.gz -O nodejs-ubuntu-init.tar.gz
rm -rf nodejs-ubuntu-init
tar zxf nodejs-ubuntu-init.tar.gz
mv nodejs-ubuntu-init-master nodejs-ubuntu-init
rm -f nodejs-ubuntu-init.tar.gz
echo -e "${green}===> 下载完毕${nc}"
echo ""
echo -e "${green}安装脚本位于： ${HOME}/nodejs-ubuntu-init${nc}"

[ $(id -u) != "0" ] && {
    source ${HOME}/nodejs-ubuntu-init/common/ansi.sh
    ansi -n --bold --bg-yellow --black "当前账户并非 root，请用 root 账户执行安装脚本（使用命令：sudo -H -s 切换为 root）"
} || {
    bash ./nodejs-ubuntu-init/22.04/install.sh
}

cd - > /dev/null
} # this ensures the entire script is downloaded #