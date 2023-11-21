if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

stty -ixon

export HISTSIZE=1000
export HISTFILESIZE=2000
export HISTCONTROL=ignorespace

shopt -s autocd
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

source "${XDG_CONFIG_HOME}/sh/aliasrc"
