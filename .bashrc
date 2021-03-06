# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export EDITOR='nano'
export HISTIGNORE="clear:pwd:df:du:stat:file:shutdown:history:which:man:ls:nano:vim"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

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
alias gdb='gdb -q'
alias ogdb='os161-gdb -q kernel'
alias zdns="/home/kawing/go/bin/zdns"
alias gobuster="/home/kawing/go/bin/gobuster"
alias hackfox="nohup firefox -P 'hunter' &"
alias retro="nohup ~/Downloads/cool-retro-term/cool-retro-term > /dev/null 2>&1 &"
alias vat="vimcat"
alias disas="objdump -M intel -d"
alias disar="objdump -R"
alias offaslr='setarch `uname -m` -R /bin/bash'

#Aliases for fun
alias op='xdg-open'
alias pingG='timeout 5 ping 8.8.8.8'
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
alias todo="clear;cat ~/todo;echo"" "
alias daily="clear;echo"";~/Documents/daily"
alias wifirestart="sudo service network-manager restart"
alias dnsclean="sudo /etc/init.d/dns-clean"
alias du="du -h"
alias df="df -h"
alias dim='sudo su -c "echo 5 > /sys/class/backlight/intel_backlight/brightness"'
alias remake='~/bmakestuff'
alias hs='history | grep -I'
alias onz='source ./*env*/bin/activate'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi


#psearch function for 3231
psearch() {
    result=${PWD##*/}                         # to assign to a variable
    echo "Searching ${result} for \"$1\"...." # to print to stdout
    grep -Eirn "$1" .
}

#highlight function
highlight() {
   grep -E --color "$1|$" "$2"
}

alias hl="highlight"

daily




#DELET IT 
alias vimcolors='ls /usr/share/vim/vim74/colors/'
alias gitsave="git config --global credential.helper 'cache --timeout 3600'"

gitsave


export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


# Install Ruby Gems to ~/gems
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH
