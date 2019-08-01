#/bin/bash

sudo apt-get -y install build-essential net-tools emacs git \
     cscope bc mlocate xauth crash wget libncurses-dev \
     python-pip tmux libtool automake libgflags-dev  \
     libboost-all-dev curl gnuplot  silversearcher-ag \
     #clang-format will be installed belos
cp .bashrc-ubuntu ~/.bashrc
cp .bash_aliases ~
cp .emacs ~
cp .tmux.conf ~
sudo cp myemacs /usr/local/bin

# for make format support
# I have a local copy of clang-format-diff.py otherwise get it from:
#curl --location http://goo.gl/iUW1u2 -o clang-format-diff.py
#chmod +x clang-format-diff.py
sudo cp clang-format-diff.py /usr/local/bin
sudo apt-get -y install clang-format

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
