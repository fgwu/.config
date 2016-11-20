centos-install:
	sudo yum -y install net-tools emacs git cscope ncurses-devel bc mlocate xauth crash wget
	sudo yum -y groupinstall 'Development Tools'
	cp .bashrc ~
	cp .bash_aliases ~
	cp .emacs ~
	sudo cp myemacs /usr/local/bin
	git config --global user.name "Fenggang Wu"
	git config --global user.email "fenggang.wu@gmail.com"
	git config --global push.default simple
	git config --global core.editor emacs
	sudo cp hostname/network /etc/sysconfig/network
	sudo cp hostname/hosts /etc/hosts
	sudo cp hostname/hostname /etc/hostname
	sudo hostname cent-hpe
	hostname
	sudo /etc/init.d/network restart

ubuntu-install:
	sudo apt-get -y install net-tools emacs git cscope cscope-el bc mlocate xauth crash wget libncurses-dev
	cp .bashrc-ubuntu ~/.bashrc 
	cp .bash_aliases ~
	cp .emacs ~
	sudo cp myemacs /usr/local/bin
	git config --global user.name "Fenggang Wu"
	git config --global user.email "fenggang.wu@gmail.com"
	git config --global push.default simple
	git config --global core.editor emacs


grub-update:
	sudo grub2-mkconfig -o /boot/grub2/grub.cfg
