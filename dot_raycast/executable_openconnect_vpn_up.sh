#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Connect to VPN
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.packageName VPN
# @raycast.icon 📶

# Documentation:
# @raycast.author SenseiMarv
# @raycast.authorURL https://raycast.com/SenseiMarv

# Load VPN script
source ~/.openconnect_vpn.sh

vpn_up

echo "✅ Connected to VPN"
