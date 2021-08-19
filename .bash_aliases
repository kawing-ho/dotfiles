# EDITOR of choice

export EDITOR=vim
export BROWSER=firefox

# Ignore the following commands in history
export HISTIGNORE="clear:pwd:df:du:stat:file:shutdown:history:which:man:ls:nano:vim"

#Extra aliases
alias c='clear'
alias u='cd ..'
alias nan='nano'
alias uu='cd .. ; cd ..'
alias cls='clear;ls'
alias sl='ls'
alias pls='pwd;ls'
alias build='gcc -Wall -Werror -O -o'
alias rm='rm -i'
alias g="egrep"
alias rg='egrep -r'
alias gdb='gdb -q'
alias du="du -h"
alias df="df -h"
alias bc='bc -q'
alias vat="vimcat"
alias up="uptime -p"
alias src="source ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bash_aliases"
alias tmux="env TERM=screen-256color tmux"
alias logout="gnome-session-quit"
alias lock="xdg-screensaver lock"
alias blank="xset dpms force off"

alias op='xdg-open'
alias tf="terraform"
alias tfa="terraform apply -auto-approve"
alias tftest="terraform apply -auto-approve -var-file=testing.tfvars"
alias tfdest="terraform destroy -auto-approve -var-file=testing.tfvars"
alias tfstate="terraform state list"
alias tfv="terraform validate"
alias pingg='timeout 5 ping 8.8.8.8'
alias wifirestart="sudo service network-manager restart"
alias dnsclean="sudo /etc/init.d/dns-clean"
alias onz='source ./*env*/bin/activate'
alias nnao="nano"
alias nao="nano"
alias bim="vim"
alias car="cat"
alias ld="ls"

alias guardup="sudo ~/Public/lp-guard-debian.sh"
alias guarddown="sudo ~/Public/lp-guard-debian.sh -down"

# Security things 
alias disas="objdump -M intel -d"
alias disar="objdump -R"
alias offaslr='setarch `uname -m` -R /bin/bash'
alias aquatone="aquatone -chrome-path /opt/google/chrome-linux/chrome"
alias dirsearch="python3 ~/tools/dirsearch/dirsearch.py"
alias sqlmap="python3 ~/tools/sqlmap-dev/sqlmap.py"
alias linkfinder="python3 ~/tools/LinkFinder/linkfinder.py"
alias dirs="dirsearch"
alias aqautone="aquatone"
alias testssl="~/tools/testssl.sh/testssl.sh --color=3 "
alias burp="xargs -P 10 -n 1 curl -k -x http://127.0.0.1:8080/"
alias smuggler="python3 ~/tools/smuggler/smuggler.py"
alias vhostbrute="python3 ~/tools/vhostbrute/vhostbrute.py"

alias vimcolors='ls ~/.vim/colors/'

#reverse IP lookup
revip() {
   curl "https://api.hackertarget.com/reverseiplookup/?q=$1"
   echo ""
}

#highlight function
highlight() {
   grep -E --color "$1|$" "$2"
}

zzdns() {
  cat "$1" | zdns A | g -v NX | jq ".name"
}

# cut a line from a file  (eg. cl 18 hello.txt)
cl() {
  sed "$1q;d" $2
}

cpl() {
  sed "$1q;d" $2 | tr -d '\n' | xclip -sel clip
}

alias hl="highlight"
alias xc="xclip -sel clip"

# LESS COLORS
export LESS_TERMCAP_mb=$'\E[01;92m'
export LESS_TERMCAP_md=$'\E[01;94m'	#Headings
export LESS_TERMCAP_me=$'\E[01:31m'	# wut
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;93m'	# Constants (less of this color)


# set remote host PS1 to different one
if [ -n "$SSH_CLIENT" ]
then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u\[\033[00m\]\[\033[01;35m\]@\h\[\033[00m\]: \[\033[04;35m\]\w\[\033[00m\] \$ '
fi
