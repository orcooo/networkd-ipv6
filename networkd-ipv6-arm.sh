#!/bin/bash

cd /etc/systemd/network
wget -N https://github.com/orcooo/networkd-ipv6/releases/download/1.0/arm.zip && unzip arm.zip && rm arm.zip
systemctl stop networking && systemctl stop ifup@enp0s3 && systemctl start systemd-networkd && systemctl enable systemd-networkd && apt purge -y --auto-remove ifupdown isc-dhcp-client
