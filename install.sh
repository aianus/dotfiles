#!/bin/bash

mv /home/gitpod/.gitconfig /home/gitpod/.gitconfig.bak
ln -s /home/gitpod/.dotfiles/.gitconfig /home/gitpod/.gitconfig
ln -s /home/gitpod/.dotfiles/.bash_aliases /home/gitpod/.bash_aliases
cp /home/gitpod/.dotfiles/hooks.sh /workspace/remote-dev/hooks.sh

# Use Administrator super-powers
awk '{gsub(/dev-temp-privileged/,"default")};1' /home/gitpod/.aws/config > /home/gitpod/.aws/config.tmp && mv /home/gitpod/.aws/config.tmp /home/gitpod/.aws/config
awk '{gsub(/DeveloperAccess/,"AdministratorAccess")};1' /home/gitpod/.aws/config > /home/gitpod/.aws/config.tmp && mv /home/gitpod/.aws/config.tmp /home/gitpod/.aws/config
