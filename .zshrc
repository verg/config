

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export GOPATH=$HOME/go
export GOROOT=$HOME/go
export PATH=$PATH:$GOROOT/bin


# Show contents of directory after cd-ing into it
chpwd() {
 ls -a -G
}

# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL

# Dotfiles config:
# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no

alias nv='nvim'
alias vi='nvim'
alias code= "cd ~/code"
alias ...='../..'
alias ....='../../..'
alias gosnip="vi ~/.config/nvim/plugged/vim-go/gosnippets/UltiSnips/go.snippets"
