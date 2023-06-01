#!/bin/bash

cd /etc/systemd/network
wget -N https://github.com/orcooo/networkd-ipv6/releases/download/1.0/enp0s3.zip && unzip enp0s3.zip && rm enp0s3.zip && sudo systemctl enable systemd-networkd && sudo systemctl restart systemd-networkd && sudo systemctl status systemd-networkd && apt purge -y --auto-remove ifupdown isc-dhcp-client
