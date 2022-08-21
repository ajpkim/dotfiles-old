## cd aliases
alias besopke='cd ~/repos/BespokeSynth/ignore/build/Source/BespokeSynth_artefacts/Release && ./BespokeSynth'


## ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

## git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gp-ak-gh='git push ak-git && git push github'
alias gl='git log'
alias gl1='git log --oneline'

## Common stuff
alias cdls='cd && ls'
alias org='cd ~/org'
alias de='find . -name "*~" -type f -delete'  # Remove emacs backups

## Dotfile management
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

## Utilities
alias bt='bluetoothctl'
alias xcc='xclip -selection clipboard'
alias ve='source venv/bin/activate'
alias chime='paplay $CHIME'  # defined in .bashrc
alias logout='pkill -KILL -u $USER'

## Applications
alias ss='flameshot gui'
alias ff='firefox'
alias e='emacsclient --create-frame'
alias et='emacsclient -nw'
alias ke='emacsclient -e "(kill-emacs)"'
alias lynx='lynx -accept_all_cookies'
alias py='python3'
alias ipy='ipython'
alias jp='jupyter-notebook'

## Displays
alias off-monitors='. ~/scripts/turn-off-monitors.sh'
alias on-monitors='. ~/scripts/turn-on-monitors.sh'
alias lg-mon='xrandr --output HDMI1 --mode 3840x2160  --right-of eDP1 --set audio off'
alias hdmi1-nodpi='xrandr --output eDP1 --auto --output HDMI1 --auto --scale 2x2 --right-of eDP1  --set audio off'

## Scripts
alias chimes='. ~/scripts/chimes.sh'
alias lines='. ~/scripts/lines.sh'
alias timer='. ~/scripts/timer.sh'
alias stopwatch='. ~/scripts/stopwatch.sh'

## Self processes
alias tt=". ~/scripts/track-time.sh"