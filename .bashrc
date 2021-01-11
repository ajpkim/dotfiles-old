#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Purple background, black foreground, and purple commands.
#PS1='\[\033[45m\]\[\033[30m\](\A)\033[00m\]\[\033[46m\]\[\033[30m\] \w \[\033[45m\]\[\033[30m\] \$ \033[00m\] '

## White text.
#PS1='\[\033[45m\]\[\033[37m\](\A)\033[00m\]\[\033[46m\]\[\033[37m\] \w \[\033[45m\]\[\033[37m\] \$ \033[00m\] '

if [ $HOSTNAME == "arch-swift3" ] || [ $HOSTNAME == "arch-macair15"]; then
    ## Background color
    #PS1="\`if [ \$? = 0 ]; then echo '\e[44m\](\A)'; else echo '\e[41m\](\A)'; fi\`\e[45m\]\e[30m\] \w \e[00m\]\$ "
    ## No background color
    PS1="\`if [ \$? = 0 ]; then echo '\e[35m\](\A)'; else echo '\e[31m\](\A)'; fi\`\e[34m\] \w \e[00m\]\$ "
else
    PS1='(\A) \u@\h: \w \$ '
fi

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Append to history file, don't overwite.
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

### Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Remap Caps Lock to Control
setxkbmap -layout us -option ctrl:nocaps

echo "Yo0o0o :)"
