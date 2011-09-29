export CLICOLOR=1
export LSCOLORS='ExFxCxDxBxegedabagacad'
export PS1="\[\033[0;37m\]\u@\h\[\033[1;37m\] \T\n\[\033[1;34m\] \w \[\033[0;31m\]\$ \[\033[0m\]"

export ZLOC_PROJECT_PATH="/Users/austin/i18n/"
export ZLOC_LANGUAGES="de_DE fr_FR pt_BR it_IT es_ES"

export HISTCONTROL=ignoredups:erasedups

#autocomplete for ssh from bash history 
complete -W "$(echo $(grep '^ssh ' .bash_history | sort -u | sed 's/^ssh //'))" ssh

function scd () {
        cd `pwd | sed $@`
}

function settitle () {
	echo -n -e "\033]0;$@\007"
}

function cd () {
	command cd "$@"
	directory=`pwd -P`
	settitle "`basename $directory`"
}

function gitpu () {
	git commit -a -m "$@"
	git push
}

alias la="ls -lah"
alias cim="vim"

