#!/usr/bin/env bash

# -----------------------------------------------------------
# Docker container, ubuntu 14.04 with python 2.7 and 3.5 installed

# Follow the instructions at https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

sudo apt-get update
sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git

# cd ~
mkdir ~/downloads
cd ~/downloads
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
make install

#After successfull vim installation, make sure that +python3 exists in the output of vim --version

# pathogen.vim: manage your runtimepath
# https://github.com/tpope/vim-pathogen
sudo apt-get install curl
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# -----------------------------------------------------------
# Add vim alias to .bashrc
printf "\n# vim alias\n" >> ~/.bashrc
echo "alias vi=\"/usr/local/bin/vim\"" >> ~/.bashrc

source ~/.bashrc

#Copy .vimrc to docker container
#Open vim and install plugins using :PluginInstall

