#
# ~/.bash_profile
#

setxkbmap -layout us -option ctrl:nocaps

## Setting up jekyll env for blog according to arch wiki: https://wiki.archlinux.org/index.php/Ruby#RubyGems
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.poetry/bin:$PATH"
export EDITOR="emacsclient -nw"
eval export PATH="/home/ajpkim/.rbenv/shims:${PATH}"export RBENV_SHELL=bash source '/usr/lib/rbenv/libexec/../completions/rbenv.bash' command rbenv rehash 2>/dev/null rbenv() { local command command="${1:-}" if [ "$#" -gt 0 ]; then shift fi case "$command" in rehash|shell) eval "$(rbenv "sh-$command" "$@")";; *) command rbenv "$command" "$@";; esac }

eval "$(rbenv init -)"
