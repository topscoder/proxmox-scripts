#!/bin/bash

#
# This script will restart the main services of proxmox.
# Comes in handy when proxmox is unresponsive, or one/more
# lxt containers / machines are unresponsive and you have
# only one proxmox node.
# 
# Usage: sh restart-services.sh

killall -9 corosync
systemctl restart pve-cluster
systemctl restart pvedaemon
systemctl restart pvestatd
systemctl restart pveproxy