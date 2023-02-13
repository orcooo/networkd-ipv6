#!/bin/bash

cd /etc/systemd/network
wget -N https://github.com/orcooo/networkd-ipv6/releases/download/1.0/amd.zip && unzip amd.zip && rm amd.zip
systemctl stop networking && systemctl stop ifup@ens3 && systemctl start systemd-networkd && systemctl enable systemd-networkd && apt purge -y --auto-remove ifupdown isc-dhcp-client
