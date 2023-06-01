#!/bin/bash

cd /etc/systemd/network
wget -N https://github.com/orcooo/networkd-ipv6/releases/download/1.0/arm-enp0s6.zip && unzip arm-enp0s6.zip && arm-enp0s6.zip
sudo systemctl enable systemd-networkd && sudo systemctl restart systemd-networkd && sudo systemctl status systemd-networkd && wq && apt purge -y --auto-remove ifupdown isc-dhcp-client
