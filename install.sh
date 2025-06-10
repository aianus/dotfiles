#!/bin/bash

if [ -n "$CODER" ]; then
  cp /home/coder/.config/coderv2/dotfiles/.gitconfig /home/coder/.gitconfig
  cp /home/coder/.config/coderv2/dotfiles/.bash_aliases /home/coder/.bash_aliases

  # Use Administrator super-powers
  awk '{gsub(/dev-temp-privileged/,"default")};1' /home/coder/.aws/config > /home/coder/.aws/config.tmp && mv /home/coder/.aws/config.tmp /home/coder/.aws/config
  awk '{gsub(/DeveloperAccess/,"AdministratorAccess")};1' /home/coder/.aws/config > /home/coder/.aws/config.tmp && mv /home/coder/.aws/config.tmp /home/coder/.aws/config
else
  echo "Not running in Coder"
fi

# Install AI shell helper
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
npm install -g --registry=https://nexus.internaldns-snaptravel.com/repository/npm/ @builder.io/ai-shell
ai config set OPENAI_KEY=$OPENAI_API_KEY
