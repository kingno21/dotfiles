#!/bin/bash

set -u

# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR
git submodule init
git submodule update

echo "start setup..."
for f in .??*; do
	[ "$f" = ".git" ] && continue
	[ "$f" = ".gitmodules" ] && continue
	[ "$f" = ".DS_Store" ] && continue

	ln -snfv ~/dotfiles/"$f" ~/
done

mkdir -p ~/.config/nvim
ln -snfv ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

echo "finish setup"
