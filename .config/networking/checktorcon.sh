#!/usr/bin/env bash


#\\- Checking tor status using curl -//

RED="\033[0;31m"
GREEN="\033[0;32m"
RESET="\033[0m"

tor=$(curl --socks5-hostname localhost:9050 -s https://check.torproject.org > /dev/null; echo $?)
[ "$tor" -gt 0 ] && { echo -e "${RED} [!] check your tor connection.${RESET}"; } || echo "${GREEN} [+] under tor network.${RESET}"
