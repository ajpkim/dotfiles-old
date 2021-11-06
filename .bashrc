#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

CLEAR="\[\033[0m\]"

RED='\[\033[00;31m\]'
GREEN='\[\033[00;32m\]'
YELLOW='\[\033[00;33m\]'
BLUE='\[\033[00;34m\]'
PURPLE='\[\033[00;35m\]'
CYAN='\[\033[00;36m\]'
LIGHTGRAY='\[\033[00;37m\]'

LRED='\[\033[01;31m\]'
LGREEN='\[\033[01;32m\]'
LYELLOW='\[\033[01;33m\]'
LBLUE='\[\033[01;34m\]'
LPURPLE='\[\033[01;35m\]'
LCYAN='\[\033[01;36m\]'
WHITE='\[\033[01;37m\]'


export PS1="[ $LBLUE\w $CLEAR]\`if [ \$? = 0 ]; then echo ' $LYELLOW\n\$ '; else echo '$LRED\n\$ '; fi\`$CLEAR"

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
