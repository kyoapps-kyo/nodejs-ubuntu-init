#!/bin/bash

{ # this ensures the entire script is downloaded #

lsb_release -d | grep 'Ubuntu' >& /dev/null
[[ $? -ne 0 ]] && { echo "仅支持 Ubuntu 22.04 系统"; exit 1; }

DISTRO=$(lsb_release -c -s)
[[ ${DISTRO} -ne "Jammy" ]] && { echo "仅支持 Ubuntu 22.04 系统"; exit 1; }

green="\e[1;32m"
nc="\e[0m"

echo -e "${green}===> 开始下载...${nc}"