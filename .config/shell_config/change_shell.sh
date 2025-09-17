#!/usr/bin/env bash

#\\- Quick shell changer -//


if [ $(whoami) != "root" ]
then
   echo "sudo privileges required."
exit 1
fi

read -p  "choose a shell. [ 1.bash./2.fish./3.zsh./ ]: " num

[ "$num" == "1" ] && sudo chsh "$USER" -s /bin/bash
[ "$num" == "2" ] && sudo chsh "$USER" -s /bin/fish
[ "$num" == "3" ] && sudo chsh "$USER" -s /bin/zsh

