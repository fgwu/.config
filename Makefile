install:
	sudo yum -y install net-tools emacs git cscope ncurses-devel bc mlocate xauth crash
	sudo yum -y groupinstall 'Development Tools'
	cp .bashrc ~
	cp .bash_aliases ~
	cp .emacs ~
	sudo cp myemacs /usr/local/bin
	git config --global user.name "Fenggang Wu"
	git config --global user.email "fenggang.wu@gmail.com"
	git config --global push.default simple
	sudo cp hostname/network /etc/sysconfig/network
	sudo cp hostname/hosts /etc/hosts
	sudo cp hostname/hostname /etc/hostname
	sudo hostname cent-hpe
	hostname
	sudo /etc/init.d/network restart


grub-update:
	sudo grub2-mkconfig -o /boot/grub2/grub.cfg
