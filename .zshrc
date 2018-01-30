# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
plugins=(git autojump zsh-completions zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

[[ -x "$(which brew)" ]] && [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
# For zsh-completions
autoload -U compinit && compinit

# Source config
[ -f "$HOME"/.sh/sh_env ] && . "$HOME"/.sh/sh_env

for sh in aliases nuodb; do
    [ -f "$HOME/.sh/sh_$sh" ] && . "$HOME/.sh/sh_$sh"
done

# alias for dotfiles
alias got='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'

