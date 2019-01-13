#!/bin/bash

set -u

THIS_DIR=$(cd $(dirname $0); pwd)

echo "start setup..."
for f in .??*; do
  [ "$f" = ".git" ] && continue
  [ "$f" = ".gitmodules" ] && continue
  [ "$f" = ".DS_Store" ] && continue
  echo $f
  # ln -snfv ~/dotfiles/"$f" ~/
done

# mkdir -p ~/.config/nvim
# ln -snfv ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

# localrc
mkdir -p $HOME/.config/shell
touch $HOME/.config/shell/.localrc
echo "finish setup"
