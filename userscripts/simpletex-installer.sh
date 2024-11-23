#!/bin/bash

DOWNLOAD_URL="https://simpletex.cn/download_mac_arm_url"
TEMP_DIR="/tmp/simple_text"
INSTALL_DIR="/Applications"
mkdir -p "$TEMP_DIR"
curl -L "$DOWNLOAD_URL" -o "$TEMP_DIR/SimpleTex.dmg"
hdiutil attach "$TEMP_DIR/SimpleTex.dmg" -mountpoint "$TEMP_DIR/mounted_dmg"
cp -r "$TEMP_DIR/mounted_dmg/SimpleTex.app" "$INSTALL_DIR/"
hdiutil detach "$TEMP_DIR/mounted_dmg"
rm -rf "$TEMP_DIR"

