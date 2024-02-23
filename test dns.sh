#!/bin/bash
# My Telegram : https://t.me/araz1308
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
clear
IP=$(wget -qO- ipinfo.io/ip);
TIME=$("%H:%M:%S");
domain=$(sed '/^$/d' /home/dom)
rm /root/hasil
if [[ "$domain" = "" ]]; then
echo "Please enter your bot token"
read -rp "domain : " -e domain
cat <<EOF>>/home/dom
$domain
EOF
fi
echo
cd root
knockpy $domain -o /root/hasil
clear