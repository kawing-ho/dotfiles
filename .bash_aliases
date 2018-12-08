# EDITOR of choice
export EDITOR='nano'

# Ignore the following commands in history
export HISTIGNORE="clear:pwd:df:du:stat:file:shutdown:history:which:man:ls:nano:vim"

#Extra aliases
alias c='clear'
alias u='cd ..'
alias uu='cd .. ; cd ..'
alias cls='clear;ls'
alias pls='pwd;ls'
alias build='gcc -Wall -Werror -O -o'
alias j='jekyll'
alias rm='rm -i'
alias g="egrep"
alias rg='egrep -r'
alias gdb='gdb -q'
alias du="du -h"
alias df="df -h"
alias bc='bc -q'
alias retro="nohup ~/Downloads/cool-retro-term/cool-retro-term > /dev/null 2>&1 &"
alias vat="vimcat"

alias op='xdg-open'
alias pingG='timeout 5 ping 8.8.8.8'
alias wifirestart="sudo service network-manager restart"
alias dnsclean="sudo /etc/init.d/dns-clean"
alias onz='source ./*env*/bin/activate'

alias zdns="/home/kawing/go/bin/zdns"
alias gobuster="/home/kawing/go/bin/gobuster"
alias disas="objdump -M intel -d"
alias disar="objdump -R"
alias offaslr='setarch `uname -m` -R /bin/bash'


# File jumppoints
alias 2011="cd /home/kawing/Desktop/'Link to unistuff'/SENG2011/"
alias 6441="cd /home/kawing/Desktop/'Link to unistuff'/COMP6441/"
alias 2911="cd /home/kawing/Desktop/'Link to unistuff'/COMP2911/"
alias 2111="cd /home/kawing/Desktop/'Link to unistuff'/COMP2111/"
alias 3331="cd /home/kawing/Desktop/'Link to unistuff'/COMP3331/"
alias 1521="cd /home/kawing/Desktop/'Link to unistuff'/COMP1521/"
alias 2041="cd /home/kawing/Desktop/'Link to unistuff'/COMP2041/"
alias 3121="cd /home/kawing/Desktop/'Link to unistuff'/COMP3121/"
alias 6843="cd /home/kawing/Desktop/'Link to unistuff'/COMP6843/"
alias 3231="cd /home/kawing/Desktop/'Link to unistuff'/COMP3231/"
alias 4920="cd /home/kawing/Desktop/'Link to unistuff'/COMP4920/"
alias 6447="cd /home/kawing/Desktop/'Link to unistuff'/COMP6447/"
alias 6845="cd /home/kawing/Desktop/'Link to unistuff'/COMP6845/"
alias 3900="cd /home/kawing/Desktop/'Link to unistuff'/COMP3900/"

alias bot="cd /home/kawing/Desktop/fbrepo/facebookbot"
alias tools="cd /home/kawing/Desktop/'Link to pastCTFs'/tools"
alias libc="cd /media/Acer/Users/gavin/Desktop/pastCTFs/tools/libc-database"
alias ctfs="cd /home/kawing/Desktop/'Link to pastCTFs'/"


alias vimcolors='ls /usr/share/vim/vim74/colors/'
alias gitsave="git config --global credential.helper 'cache --timeout 3600'"

#highlight function
highlight() {
   grep -E --color "$1|$" "$2"
}

alias hl="highlight"


# LESS COLORS
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Execution on start 
gitsave

