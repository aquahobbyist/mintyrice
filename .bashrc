#!/bin/bash 
#history control
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
HISTTIMEFORMAT="%a %b %e %T "
shopt -s histappend

#QOL
stty -ixon #disable M-s 
alias quit="exit"
alias cls="clear"
alias su="sudo su"
export PS1="\e[m\e[1;32m-\d \t-\e[m\e[1;34m[\w]\e[m\$"
shopt -s autocd
shopt -s checkwinsize
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
alias brname="vimv" 
alias searchcmd="ls $(echo $PATH | sed "s/:/ /g") | grep"

#ls and grep
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto '
alias egrep='egrep --color=auto'
alias ll='ls -alFh'
alias la='ls -Ah'
alias l='ls -CFh'

#yt-dl and du/df
YTDL="yt-dlp"
alias ytmp3-playlist="$YTDL --add-metadata --yes-playlist -x --audio-format \"vorbis\""
alias ytmp3="$YTDL --add-metadata -x  -o \"%(title)s.%(ext)s\" --audio-format \"vorbis\""
alias ddu="du -hs"
alias df="df -h"

#vim shortcuts
alias vi="nvim"

#if root
if [ $(whoami) == "root" ]; then
		export PS1="-\d \t-[\w]root\$"
fi

#Universal Variables (deafault applications)
export BROWSER='firefox'
export EDITOR='nvim'

