export EDITOR=emacs
export VISUAL=emacs
export GOPATH=$HOME/work
export GOBIN=$GOPATH/bin

alias sshx='ssh -X'
alias ll='ls -al'
alias s='ssh'
alias e='emacs'
alias c='clear'
alias rm='rm -i'
alias sshmsi='ssh -t login.msi.umn.edu ssh itasca'
#alias sshmist='ssh mist17-umh.cs.umn.edu'
alias sshmist='ssh mist08-umh.cs.umn.edu -Y'
alias mist='ssh mist08-umh.cs.umn.edu'
alias mist08='ssh mist08-umh.cs.umn.edu -Y'
alias mist02='ssh mist02-umh.cs.umn.edu -Y'
alias mist03='ssh mist03-umh.cs.umn.edu -Y'
alias mist06='ssh mist06-umh.cs.umn.edu -Y'
alias mist07='ssh mist07-umh.cs.umn.edu -X'
#alias mist25='ssh smr-umh.cs.umn.edu -Y -t ssh 172.16.1.86 -Y'
alias mist25='ssh mist25-umh.cs.umn.edu -Y'
alias mist34='ssh mist34-umh.cs.umn.edu -Y'
alias mist46='ssh mist46-umh.cs.umn.edu -Y'
alias mist47='ssh mist47-umh.cs.umn.edu -Y'
#alias mist46='ssh smr-umh.cs.umn.edu -X -t ssh 172.16.1.83 -X'
#alias mist47='ssh smr-umh.cs.umn.edu -Y -t ssh 172.16.1.84 -Y'
alias smr='ssh smr-umh.cs.umn.edu -Y'
alias had='ssh hduser@smr-umh.cs.umn.edu -Y'

alias sshsgi='ssh mist08-umh.cs.umn.edu -t ssh fenggang@gebc-login1.sgi.com -t ssh ltest2-admin-dmz'

#alias sshuv='ssh fenggang@gebc-login1.sgi.com -t ssh cy024-p4-sys-dmz'
alias sshmds='ssh fenggang@gebc-login1.sgi.com -t  ssh root@192.48.174.144'
alias sshoss2='ssh fenggang@gebc-login1.sgi.com -t  ssh root@192.48.174.194'
alias sshoss3='ssh fenggang@gebc-login1.sgi.com -t  ssh root@192.48.174.196'
alias sshoss4='ssh fenggang@gebc-login1.sgi.com -t  ssh root@192.48.174.198'

alias sshoboe='ssh wuxx0835@oboe.cs.umn.edu'
alias sshexa='ssh wuxx0835@exa.cs.umn.edu'

alias oobi='ssh fenggang@oobi.boi.storage.hpecorp.net'
alias oobii='ssh fenggang@oobii.boi.storage.hpecorp.net'

#alias pm='ssh 192.168.18.145'
alias sffs='ssh 192.168.18.130'
#alias cent='ssh 172.16.196.128'
alias cent='ssh -X -p 3022 127.0.0.1'
alias upm='ssh -X -p 4022 127.0.0.1'
alias ubu='ssh -X -p 5022 127.0.0.1'
alias startvm='VirtualBox -startvm cent-hpe &'

alias fb='ssh -Y root@fenggang.wu.virtualdevserver.com -p 35641'


export PATH=$PATH:/Users/fwu/bin
export ARCHDIR=/opt/cross/mips/bin

# set for MIPS cross compiler for MACOSX
# reference: http://www.theairportwiki.com/index.php/Building_a_cross_compile_of_GCC_for_MIPS_on_OS_X
export CC=/usr/local/bin/gcc-4.8
export CXX=/usr/local/bin/g++-4.8
export CPP=/usr/local/bin/cpp-4.8
export LD=/usr/local/bin/gcc-4.8
export PREFIX=/opt/cross/gcc-mips
export CFLAGS=-Wno-error=deprecated-declarations

export PATH=$PATH:${PREFIX}/bin



export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

alias sshlus='ssh fwu@mist08-umh.cs.umn.edu -t  ssh root@172.16.1.222'

alias grep='grep --color'
