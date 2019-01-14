# EDITOR of choice
export EDITOR=vim

# Ignore the following commands in history
export HISTIGNORE="clear:pwd:df:du:stat:file:shutdown:history:which:man:ls:nano:vim"

#Extra aliases
alias c='clear'
alias u='cd ..'
alias uu='cd .. ; cd ..'
alias cls='clear;ls'
alias sl='ls'
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
alias bat='docker run -it --rm -e BAT_THEME -e BAT_STYLE -e BAT_TABS -v "$(pwd):/myapp" danlynn/bat'
alias up="uptime -p"
alias ydl="youtube-dl"
alias src="source ~/.bashrc"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bash_aliases"
alias tmux="env TERM=screen-256color tmux"
alias logout="gnome-session-quit"
alias lock="xdg-screensaver lock"
alias blank="xset dpms force off"

alias op='xdg-open'
alias pingg='timeout 5 ping 8.8.8.8'
alias wifirestart="sudo service network-manager restart"
alias dnsclean="sudo /etc/init.d/dns-clean"
alias onz='source ./*env*/bin/activate'
alias iftop='sudo iftop -i wlp3s0'

# Security things 
alias zdns="/home/wingz/go/bin/zdns"
alias gobuster="/home/wingz/go/bin/gobuster"
alias disas="objdump -M intel -d"
alias disar="objdump -R"
alias offaslr='setarch `uname -m` -R /bin/bash'


# File jumppoints
alias 2011="cd /home/wingz/Desktop/unistuff/SENG2011/"
alias 6441="cd /home/wingz/Desktop/unistuff/COMP6441/"
alias 2911="cd /home/wingz/Desktop/unistuff/COMP2911/"
alias 2111="cd /home/wingz/Desktop/unistuff/COMP2111/"
alias 3331="cd /home/wingz/Desktop/unistuff/COMP3331/"
alias 1521="cd /home/wingz/Desktop/unistuff/COMP1521/"
alias 2041="cd /home/wingz/Desktop/unistuff/COMP2041/"
alias 3121="cd /home/wingz/Desktop/unistuff/COMP3121/"
alias 6843="cd /home/wingz/Desktop/unistuff/COMP6843/"
alias 3231="cd /home/wingz/Desktop/unistuff/COMP3231/"
alias 4920="cd /home/wingz/Desktop/unistuff/COMP4920/"
alias 6447="cd /home/wingz/Desktop/unistuff/COMP6447/"
alias 6845="cd /home/wingz/Desktop/unistuff/COMP6845/"
alias 3900="cd /home/wingz/Desktop/unistuff/COMP3900/"
alias finance="cd /home/wingz/Desktop/unistuff/FINANCE/"
alias projects="cd /home/wingz/Projects"
alias terra="cd /home/wingz/Projects/terraocean"

alias youtube="cd /media/Acer/Users/gavin/Videos/youtube"
alias tools="cd /home/wingz/Desktop/pastCTFs/tools"
alias ctfs="cd /home/wingz/Desktop/pastCTFs"


alias vimcolors='ls /usr/share/vim/vim80/colors/'
alias gitsave="git config --global credential.helper 'cache --timeout 3600'"

#highlight function
highlight() {
   grep -E --color "$1|$" "$2"
}

alias hl="highlight"


# LESS COLORS
export LESS_TERMCAP_mb=$'\E[01;92m'
export LESS_TERMCAP_md=$'\E[01;94m'	#Headings
export LESS_TERMCAP_me=$'\E[01:31m'	# wut
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;93m'	# Constants (less of this color)

# Execution on start 
gitsave

# Still experimenting
#alias vim='nvim'

# tmuxinator completions
[ -f ~/.local/bin/tmuxinator.bash ] && source ~/.local/bin/tmuxinator.bash

[[ -s /home/wingz/.autojump/etc/profile.d/autojump.sh ]] && source /home/wingz/.autojump/etc/profile.d/autojump.sh

# set remote host PS1 to different one
if [ -n "$SSH_CLIENT" ]
then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u\[\033[00m\]\[\033[01;35m\]@\h\[\033[00m\]: \[\033[04;35m\]\w\[\033[00m\] \$ '
fi


# TERRAFORM
export TF_VAR_HOME="$HOME"
export STEMN_YARN_LOGFILE="/tmp/logfile"
