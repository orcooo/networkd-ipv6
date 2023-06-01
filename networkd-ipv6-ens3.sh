#!/bin/bash

cd /etc/systemd/network
wget -N https://github.com/orcooo/networkd-ipv6/releases/download/1.0/ens3.zip && unzip ens3.zip && rm ens3.zip && sudo systemctl enable systemd-networkd && sudo systemctl restart systemd-networkd && sudo systemctl status systemd-networkd
