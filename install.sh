#!/bin/bash

if [ -n "$CODER" ]; then
  # mv /home/coder/.gitconfig /home/coder/.gitconfig.bak
  ln -s /home/coder/.config/coderv2/dotfiles/.gitconfig /home/coder/.gitconfig
  ln -s /home/coder/.config/coderv2/dotfiles/.bash_aliases /home/coder/.bash_aliases
  # cp /home/coder/.config/coderv2/dotfiles/hooks.sh /workspace/remote-dev/hooks.sh

  # Use Administrator super-powers
  awk '{gsub(/dev-temp-privileged/,"default")};1' /home/coder/.aws/config > /home/coder/.aws/config.tmp && mv /home/coder/.aws/config.tmp /home/coder/.aws/config
  awk '{gsub(/DeveloperAccess/,"AdministratorAccess")};1' /home/coder/.aws/config > /home/coder/.aws/config.tmp && mv /home/coder/.aws/config.tmp /home/coder/.aws/config
elif [ -n "$GITPOD_REPO_PATH" ]; then
  mv /home/gitpod/.gitconfig /home/gitpod/.gitconfig.bak
  ln -s /home/gitpod/.dotfiles/.gitconfig /home/gitpod/.gitconfig
  ln -s /home/gitpod/.dotfiles/.bash_aliases /home/gitpod/.bash_aliases
  cp /home/gitpod/.dotfiles/hooks.sh /workspace/remote-dev/hooks.sh

  # Use Administrator super-powers
  awk '{gsub(/dev-temp-privileged/,"default")};1' /home/gitpod/.aws/config > /home/gitpod/.aws/config.tmp && mv /home/gitpod/.aws/config.tmp /home/gitpod/.aws/config
  awk '{gsub(/DeveloperAccess/,"AdministratorAccess")};1' /home/gitpod/.aws/config > /home/gitpod/.aws/config.tmp && mv /home/gitpod/.aws/config.tmp /home/gitpod/.aws/config
else
  echo "Not running in Coder or Gitpod"
fi

# Install AI shell helper
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
npm install -g --registry=https://nexus.internaldns-snaptravel.com/repository/npm/ @builder.io/ai-shell
ai config set OPENAI_KEY=$OPENAI_API_KEY
