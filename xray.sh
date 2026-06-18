#!/bin/bash
sudo apt-get update
sudo apt install -y unzip curl
sudo bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install
sudo rm -rf /usr/local/etc/xray/config.json
sudo wget -P /usr/local/etc/xray https://raw.githubusercontent.com/chenlysave/mnthg/refs/heads/main/config.json
sudo systemctl restart xray
