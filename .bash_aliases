## ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Dotfile management
alias dotfiles='/usr/bin/git --git-dir=/home/ajpkim/.dotfiles --work-tree=$HOME'

### System info
alias bat='cat /sys/class/power_supply/BAT0/capacity'

### Tools
alias xcc='xclip -selection clipboard'

### Applications
alias ff='firefox'
alias e='emacs'
alias ef='emacs -fs'
alias et='emacs -nw'
alias lynx='lynx -accept_all_cookies'
alias py='python3'

### Scripts
alias off-monitors='. ~/scripts/turn-off-monitors.sh'
alias on-monitors='. ~/scripts/turn-on-monitors.sh'
