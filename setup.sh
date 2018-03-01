#!/usr/bin/env bash

cd ~/git_repos
sh ./setupfiles/clone_git_repos.sh
sh ./setupfiles/vim_setup.sh

# copy vimrc to homw folder
cp ~/git_repos/setupfiles/vimrc ~/.vimrc

# open vim and run :PluginInstall

# Update existing packages and install additional packages for the user-graph code
pip3 install -r ~/git_repos/user-graph/requirements.txt

# If sklearn is not updated then use
# pip3 install sklearn --upgrade
