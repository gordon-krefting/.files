#!/bin/bash

uname=`uname`

env="unknown"

if [ "Linux" = "$uname" ] 
then
  env="linux"
elif [ "Darwin" = "$uname" ]
then
  env="mac"
elif [ "CYGWIN_NT-10.0" = "$uname" ]
then
  env="cygwin"
fi

if [ "unknown" = $env ]
then
  echo "Unknown environment"
  echo "Uname: $uname"
  exit 1
fi

dotfiles=("zshrc" "gitconfig")

dir="${HOME}/.files"

for dotfile in "${dotfiles[@]}";do
  ## ln -s /home/gkreftin/.files/zshrc /home/gkreftin/lzshrc
  if [ -e ${HOME}/.files/${dotfile}_${env} ]
  then
    cmd="ln -sf ${HOME}/.files/${dotfile}_${env} ${HOME}/.${dotfile}"
  else
    cmd="ln -sf ${HOME}/.files/${dotfile} ${HOME}/.${dotfile}"
  fi
  echo "$cmd"
  `$cmd`
done




