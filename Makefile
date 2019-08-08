centos-install:
	sudo yum -y install net-tools emacs git cscope ncurses-devel bc mlocate xauth crash wget python-pip
	sudo yum -y groupinstall 'Development Tools'
	cp .bashrc ~
	cp .bash_aliases ~
	cp .emacs ~
	sudo cp myemacs /usr/local/bin
	sudo cp hostname/network /etc/sysconfig/network
	sudo cp hostname/hosts /etc/hosts
	sudo cp hostname/hostname /etc/hostname
	sudo hostname cent-hpe
	hostname
	sudo /etc/init.d/network restart
	make common

ubuntu-install:
	sudo apt-get -y install build-essential net-tools emacs git cscope xcscope-el bc mlocate xauth crash wget libncurses-dev python-pip tmux libtool automake libgflags-dev  libboost-all-dev curl clang-format 
	cp .bashrc-ubuntu ~/.bashrc 
	cp .bash_aliases ~
	cp .emacs ~
	cp .tmux.conf ~
	sudo cp myemacs clang-format-diff.py /usr/local/bin
	make common

common:
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

common:

grub-update:
	sudo grub2-mkconfig -o /boot/grub2/grub.cfg
