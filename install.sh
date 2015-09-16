#!/bin/bash
# wget -qO- --no-check-certificate https://raw.github.com/bbuhai/dotfiles/master/install.sh | /bin/bash

if [ -d ~/.dotfiles ]; then
    cd ~/.dotfiles/.vim/bundle/vundle/
    git pull origin master
    cd ~/.dotfiles
    git pull origin master
    sudo pip install pip --upgrade
    sudo pip install flake8 --upgrade
    vim +PluginInstall! +BundleClean! +qall
else
    git clone https://github.com/bbuhai/dotfiles.git ~/.dotfiles/
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.dotfiles/vim/bundle/Vundle.vim

    cd ~/.dotfiles
    make install

    sudo pip install pip --upgrade
    sudo pip install flake8 --upgrade
    vim +PluginInstall +qall
fi
curl -L http://install.ohmyz.sh | sh
