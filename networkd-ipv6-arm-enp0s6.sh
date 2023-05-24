#!/bin/bash

cd /etc/systemd/network
wget -N https://github.com/orcooo/networkd-ipv6/releases/download/1.0/arm-enp0s6.zip && unzip arm-enp0s6.zip && arm-enp0s6.zip
systemctl stop networking && systemctl stop ifup@enp0s6 && systemctl start systemd-networkd && systemctl enable systemd-networkd && apt purge -y --auto-remove ifupdown isc-dhcp-client