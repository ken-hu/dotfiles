# Path to your oh-my-zsh installation.
export ZSH=/Users/kenhu/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# autojump
plugins=(git autojump)
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Source config
[ -f "$HOME"/.sh/sh_env ] && . "$HOME"/.sh/sh_env

for sh in aliases nuodb; do
    [ -f "$HOME/.sh/sh_$sh" ] && . "$HOME/.sh/sh_$sh"
done

# alias for dotfiles
alias got='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'
