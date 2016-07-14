# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

export CSCOPE_EDITOR=`which myemacs`
export PS1="\[\033[38;5;87m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\] \[\033[38;5;3m\]\W\[$(tput sgr0)\]> "
