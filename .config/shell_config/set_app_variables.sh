#!/usr/bin/env bash


#\\-Modifying application environment variables if they're blank.-//


#Common env variables - vv.

[ -z "$BROWSER" ] && { export BROWSER="firefox"; echo "[+] set $BROWSER"; } || echo "[*] Your app env variable [ $BROWSER ] is already set."
[ -z "$EDITOR"  ] && { export EDITOR="vim"; echo "[+] set $EDITOR"; } || echo "[*] Your app env variable [ $EDITOR ] is already set."
[ -z "$VISUAL"  ] && { export VISUAL="man"; echo "[+] set $VISUAL"; } || echo "[*] Your app env variable [ $VISUAL ] is already set."

#Networking variables (docker/proxies)- vv. 

[ -z "$DOCKER_HOST" ] && { export DOCKER_HOST="tcp://localhost:2375"; echo "[+] set $DOCKER_HOST"; } || echo " [*] Your app env variable [ $DOCKER_HOST ] is already set."
[ -z "$HTTP_PROXY" ] && { export  HTTP_PROXY="http://127.0.0.1:8080"; echo "[+] set $HTTP_PROXY"; } || echo " [*] Your app env variable [ $HTTP_PROXY ] is already set."
[ -z "$HTTPS_PROXY" ] && { export HTTPS_PROXY="http://127.0.0.1:8080"; echo "[+] set $HTTPS_PROXY"; } || echo " [*] Your app env variable [ $HTTPS_PROXY ] is already set."
[ -z "$NO_PROXY" ] && { export NO_PROXY="localhost,127.0.0.1,.website.com"; echo "[+] set $NO_PROXY"; } || echo " [*] Your app env variable [ $NO_PROXY ] is already set."

#Programming variables (Java/Node.js/Python/Go) - vv.

[ -z "$JAVA_HOME" ] && { export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64"; echo "[+] set $JAVA_HOME"; } || echo "[*] Your app env variable [ $JAVA_HOME ] is already set."
[ -z "$NODE_ENV" ] && { export  NODE_ENV="development"; echo "[+] set $NODE_ENV"; } || echo "[*] Your app env variable [ $NODE_ENV ] is already set." 
[ -z "$NVM_DIR" ] && { export  NVM_DIR="$HOME/.nvm"; echo "[+] set $NVM_DIR"; } || echo "[*] Your app env variable [ $NVM_DIR ] is already set."
[ -z "$PYTHONPATH" ] && { export PYTHONPATH="$HOME/my-python-modules"; echo "[+] set $PYTHONPATH"; } || echo "[*] Your app env variable [ $PYTHONPATH ] is already set."
[ -z "$VIRTUAL_ENV" ] && { export VIRTUAL_ENV="$HOME/venv"; echo "[+] set $VIRTUAL_ENV"; } || echo "[*] Your app env variable [ $VIRTUAL_ENV ] is already set."
[ -z "$PIP_INDEX_URL" ] && { export PIP_INDEX_URL="https://pypi.org/simple"; echo "[+] set $PIP_INDEX_URL"; } || echo "[*] Your app env variable [ $PIP_INDEX_URL ] is already set."
[ -z "$GOPATH" ] && { export GOPATH="$HOME/go"; echo "[+] set $GOPATH"; } || echo "[*] Your app env variable [ $GOPATH ] is already set."
[ -z "$GOROOT" ] && { export GOROOT="/usr/local/go"; echo "[+] set $GOROOT"; } || echo "[*] Your app env variable [ $GOROOT ] is already set."

echo "Done."
