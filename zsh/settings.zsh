export EDITOR=vim

export HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# TODO maybe use default logging, but custom up-arrow searching?
# bind '"\e[A": history-search-backward'
# bind '"\e[B": history-search-forward'
setopt HIST_IGNORE_ALL_DUPS

# tab menu traversal
zstyle ':completion:*:*:*:*:*' menu select
bindkey '^[[Z' reverse-menu-complete

bindkey "^R" history-incremental-pattern-search-backward

# emacs-style editing on cli
bindkey -e

# edit command with `<ctrl-x><ctrl-e>`
autoload edit-command-line; zle -N edit-command-line
bindkey "^X^E" edit-command-line

# homebrew
PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH

# virtualenv
#export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=$(which python3)
#if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
#    source /usr/local/bin/virtualenvwrapper.sh
#fi
