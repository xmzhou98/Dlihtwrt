#!/bin/bash
git clone https://github.com/xmzhou98/DlightWrt.git   DlightWrt_arm64
cd DlightWrt_arm64
./scripts/feeds update -a
./scripts/feeds install -a
cp arm64.config .config
cp -rf openjdk8_arm64  package/dlight-gateway/files/openjdk8
make menuconfig
make -j8 download V=s
make -j1  V=s
