## Common use
alias org='cd ~/org'

## ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cdls='cd && ls'

# Dotfile management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

### Utilities
alias chime='paplay $CHIME'  # defined in .bashrc
alias logout='pkill -KILL -u $USER'

### Tools
alias xcc='xclip -selection clipboard'
alias ss='flameshot gui'
alias ve='source venv/bin/activate'

### Applications
alias ff='firefox'
alias e='emacsclient --create-frame'
alias et='emacsclient -nw'
alias ke='emacsclient -e "(kill-emacs)"'
alias lynx='lynx -accept_all_cookies'
alias py='python3'

alias acer-right='xrandr --output DP-1 --mode 1920x1080 --right-of eDP1'
alias acer-left='xrandr --output DP-1 --mode 1920x1080 --left-of eDP1'

### Scripts
alias off-monitors='. ~/scripts/turn-off-monitors.sh'
alias on-monitors='. ~/scripts/turn-on-monitors.sh'
alias lg-mon='xrandr --output HDMI1 --mode 3840x2160  --right-of eDP1'

### General
alias de='find . -name "*~" -type f -delete'