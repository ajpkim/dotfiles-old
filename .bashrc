#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## Purple background, black foreground, and purple commands.
#PS1='\[\033[45m\]\[\033[30m\](\A)\033[00m\]\[\033[46m\]\[\033[30m\] \w \[\033[45m\]\[\033[30m\] \$ \033[00m\] '

## White text.
#PS1='\[\033[45m\]\[\033[37m\](\A)\033[00m\]\[\033[46m\]\[\033[37m\] \w \[\033[45m\]\[\033[37m\] \$ \033[00m\] '

if [ $HOSTNAME == "arch-swift3" ] || [ $HOSTNAME == "arch-macair15" ]; then
    ## Background color
    #PS1="\`if [ \$? = 0 ]; then echo '\e[44m\](\A)'; else echo '\e[41m\](\A)'; fi\`\e[45m\]\e[30m\] \w \e[00m\]\$ "
    ## No background color
    # PS1="\`if [ \$? = 0 ]; then echo '\e[35m\](\A)'; else echo '\e[31m\](\A)'; fi\`\e[34m\] \w \e[00m\]\$ "
    PS1="\`if [ \$? = 0 ]; then echo '\e[35m\]\w \e[34m\]\$ '; else echo '\e[31m\]\w \$ '; fi\`\e[00m\]"
    #PS1="\`if [ \$? = 0 ]; then echo '\e[35m\] \w'; else echo ' \e[31m\]\w; fi\` \e[00m\]\$ "
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

### Vars
export CHIME='/usr/share/sounds/freedesktop/stereo/complete.oga'

### Shell vars
TERMINAL=alacritty
# Brightness on Acer Swift3 is 0-187
BRIGHTNESS_FILE_SWIFT=/sys/class/backlight/intel_backlight/brightness
# Brightness on macair is 0-100
BRIGHTNESS_FILE_MACAIR15=/sys/class/backlight/acpi_video0/brightness

### Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

### Scripts (exported functions)
SCRIPTS="~/scripts"
. ~/scripts/timing.sh
. ~/scripts/chimes.sh
. ~/scripts/weather.sh

# Remap Caps Lock to Control
setxkbmap -layout us -option ctrl:nocaps

echo "Yo0o0o :)"

