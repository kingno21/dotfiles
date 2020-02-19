if [[ "$OSTYPE" == "darwin"* ]]; then
  brew install neovim
fi

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim
touch ~/.config/nvim/local.vim
ln -snfv ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
