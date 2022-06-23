#!/bin/bash

_exts=(
  ms-python.python
  kylepaulsen.stretchy-spaces
  redhat.vscode-xml
  redhat.vscode-yaml
  esbenp.prettier-vscode
  ms-kubernetes-tools.vscode-kubernetes-tools
  reduckted.vscode-gitweblinks
  eamodio.gitlens
  huizhou.githd
  ms-azuretools.vscode-docker
  hashicorp.terraform
)
for _ext in "${_exts[@]}"; do {
   code --install-extension "$_ext";
} done
