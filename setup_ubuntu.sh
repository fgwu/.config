#/bin/bash

sudo apt-get -y install build-essential net-tools emacs git cscope bc mlocate \
     xauth crash wget libncurses-dev python-pip tmux libtool automake \
     libgflags-dev  libboost-all-dev curl
cp .bashrc-ubuntu ~/.bashrc
cp .bash_aliases ~
cp .emacs ~
cp .tmux.conf ~
sudo cp myemacs /usr/local/bin

git config --global user.name "Fenggang Wu"
git config --global user.email "fenggang.wu@live.com"
git config --global push.default simple
git config --global core.editor myemacs
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
