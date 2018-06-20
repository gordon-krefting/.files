#!/bin/bash

uname=`uname`

env="unknown"

if [ "Linux" = "$uname" ] 
then
  env="linux"
fi

if [ "unknown" == env ]
then
  echo "Unknown environment"
  echo "Uname: $uname"
  exit 1
fi

echo "$env"

dotfiles=("zshrc" "gitconfig")

dir="${HOME}/.files"

for dotfile in "${dotfiles[@]}";do
  ## ln -s /home/gkreftin/.files/zshrc /home/gkreftin/lzshrc
  cmd="ln -sf ${HOME}/.files/${dotfile} ${HOME}/.${dotfile}"
  echo "$cmd"
done




