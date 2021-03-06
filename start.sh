#!/bin/sh
echo "keepalive..."
touch /tmp/keepalive

docker rmi `docker images -q`
echo "Deleting files, please wait ..."

sudo rm -rf /usr/share/dotnet /etc/mysql /etc/php /etc/apt/sources.list.d
sudo -E apt-get -y purge azure-cli ghc* zulu* hhvm llvm* firefox google* dotnet* powershell openjdk* php*

echo "apt install"
sudo -E apt update
sudo -E apt -y install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler
sudo -E apt -y autoremove --purge
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime


echo "git clone"
git clone https://github.com/coolsnowwolf/lede openwrt
cd openwrt
./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig
