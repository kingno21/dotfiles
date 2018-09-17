#!/bin/bash

link() {
  pushd zshrc
  dir=$(cd "$(dirname "$0")"; pwd)
  for f in ??*; do
    if [ -e $HOME/".$f" ]; then
      unlink $HOME/".$f"
      echo "unlink ${f}"
    fi

    echo "link ${f}"
    ln -s "$dir/$f" "$HOME/.$f"
  done
  popd
}

zplug() {
  if [ ! -e $HOME/.config/.zplug ]; then
    mkdir -p $HOME/.config
    git clone https://github.com/zplug/zplug $HOME/.config/.zplug
  fi
}

main() {
  zplug
  link
}

main
