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
git clone https://github.com/jiangmiao/auto-pairs

# install personal config files
echo "linking personal config"
cd
export folderpath="$PWD/.tconfig"
ln -s $folderpath/.zshrc ~/.zshrc
ln -s $folderpath/.zaliases ~/.zaliases
ln -s $folderpath/.vimrc ~/.vimrc
ln -s $folderpath/.gitconfig ~/.gitconfig
ln -s $folderpath/.gitignore_global ~/.gitignore_global

