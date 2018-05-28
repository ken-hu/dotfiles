# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Load plugins
plugins=(git autojump zsh-completions zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

ZSHRC=$HOME/.rc
# Load theme for prompt
source $ZSHRC/my.zsh_theme

[[ -x "$(which brew)" ]] && [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
# For zsh-completions
autoload -U compinit && compinit

# Source config
[ -f $ZSHRC/env ] && . $ZSHRC/env

for rc in aliases nuodb; do
    [ -f "$ZSHRC/$rc" ] && . "$ZSHRC/$rc"
done

# alias for dotfiles
alias got='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# You will need to
# 1) Disselect options for Windows and Tabs
# 2) Set Profiles>Terminal>Terminal may set tab/window title
DISABLE_AUTO_TITLE="true"
precmd () {
    # Display the relative path as the iTerm2 tab title
    tab_label=${PWD/${HOME}/\~}
    echo -ne "\e]2;${tab_label}\a"
    echo -ne "\e]1;${tab_label: -24}\a"
}
