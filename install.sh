#!/bin/bash

mv /home/gitpod/.gitconfig /home/gitpod/.gitconfig.bak
ln -s /home/gitpod/.dotfiles/.gitconfig /home/gitpod/.gitconfig
ln -s /home/gitpod/.dotfiles/.bash_aliases /home/gitpod/.bash_aliases
cp /home/gitpod/.dotfiles/hooks.sh /workspace/remote-dev/hooks.sh

