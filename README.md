# dotfiles

```shell
git clone --bare git@github.com:ken-hu/dotfiles.git $HOME/.cfg
# got = git + dot
alias got='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'
got config --local status.showUntrackedFiles no
got checkout [-f]
got submodule update --init --recursive
```
