#!/bin/sh

# install zsh + other packages
echo "installing packages"
sudo apt install -y curl zsh glances guake vim

# install oh-my-zsh
echo "installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install pathogen
echo "installing pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vim plugins
echo "installing vim plugins"
cd ~/.vim/bundle 
git clone https://github.com/scrooloose/nerdcommenter
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/tpope/vim-surround
git clone https://github.com/tpope/vim-sensible
git clone https://github.com/bling/vim-airline
git clone https://github.com/fatih/vim-go
git clone https://github.com/terryma/vim-expand-region


# install personal config files
echo "linking personal config"
ln -s "$(dirname -- "$0")"/.zshrc ~/.zshrc
ln -s "$(dirname -- "$0")"/.zaliases ~/.zaliases
ln -s "$(dirname -- "$0")"/.vimrc ~/.vimrc
ln -s "$(dirname -- "$0")"/.gitconfig ~/.gitconfig
ln -s "$(dirname -- "$0")"/.gitignore_global ~/.gitignore_global

