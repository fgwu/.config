install:
	sudo yum install net-tools emacs git cscope 
	sudo yum groupinstall 'Development Tools'
	sudo yum install ncurses-devel
	sudo yum install bc
	cp .bashrc ~
	cp .bash_aliases ~
	cp .emacs ~
	sudo cp myemacs /usr/local/bin
