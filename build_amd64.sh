#!/bin/bash
git clone https://github.com/xmzhou98/DlightWrt.git   DlightWrt_amd64
cd DlightWrt_amd64
./scripts/feeds update -a
./scripts/feeds install -a
cp x86.config .config
cp -rf openjdk8_amd64  package/dlight-gateway/files/openjdk8
make menuconfig
make -j8 download V=s
make -j1  V=s