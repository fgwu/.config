install:
	sudo yum -y install net-tools emacs git cscope ncurses-devel bc
	sudo yum -y groupinstall 'Development Tools'
	cp .bashrc ~
	cp .bash_aliases ~
	cp .emacs ~
	sudo cp myemacs /usr/local/bin
	git config --global user.name "Fenggang Wu"
	git config --global user.email "fenggang.wu@gmail.com"
	git config --global push.default simple
