if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install tmux
fi

if [ ! -d "$HOME/.tmux/plugins/tpm" ]
then
  echo "downloading tpm"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

ln -snfv $HOME/dotfiles/.tmux.conf $HOME/
