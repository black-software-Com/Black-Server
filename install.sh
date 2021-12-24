#!/bin/sh
# Black-Server v1.0
#

if [[ "$(id -u)" -ne 0 ]];
then
  echo "Please, Run This Program as Root!"
  exit
fi

function Main() {
    printf '\033]2;Black-Server/Installing\a'
    clear
    echo "Installing..."
    chmod +x black
    cp black /usr/bin && cp black /usr/local/bin
    sleep 2
    apt install python
    apt install python3
    apt install python3-pip
    pip3 install --upgrade pip
    python3 -m pip3 install -r requirments.txt
    sleep 1
    echo "
Finish...!"
    sleep 0.10
    echo "
Usage:
     python black
    "
    sleep 0.10
    exit
}
Main
