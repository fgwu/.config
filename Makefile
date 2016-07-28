install:
	sudo yum -y install net-tools emacs git cscope ncurses-devel bc
	sudo yum -y groupinstall 'Development Tools'
	cp .bashrc ~
	cp .bash_aliases ~
	cp .emacs ~
	sudo cp myemacs /usr/local/bin
