#!/bin/bash

gp await-port 23000

# Install AI shell helper
npm install -g --registry=https://nexus.internaldns-snaptravel.com/repository/npm/ @builder.io/ai-shell
ai config set OPENAI_KEY=$OPENAI_API_KEY

# _exts=(
#   ms-python.python
#   kylepaulsen.stretchy-spaces
#   redhat.vscode-xml
#   redhat.vscode-yaml
#   esbenp.prettier-vscode
#   ms-kubernetes-tools.vscode-kubernetes-tools
#   reduckted.vscode-gitweblinks
#   eamodio.gitlens
#   huizhou.githd
#   ms-azuretools.vscode-docker
#   hashicorp.terraform
#   github.copilot
# )
# for _ext in "${_exts[@]}"; do {
#    code --install-extension "$_ext";
# } done
