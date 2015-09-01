# Load the shell dotfiles
for file in ~/.{functions,extra,aliases}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"
DEFAULT_USER="simonsmith"

# Load plugins
# https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins
plugins=(git npm z sublime brew tmux bundler)

# $PATH
#
# Initial
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
# rbenv
export PATH="~/.rbenv/shims:$PATH"
# Add ~/bin dir for things like `subl`
export PATH="~/bin:$PATH"

# Load some additional things
source ~/git-hub/init
source ~/.nvm/nvm.sh
eval "$(rbenv init -)"
source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"

export TERM='xterm-256color'
export NVIM_TUI_ENABLE_CURSOR_SHAPE=1

source $ZSH/oh-my-zsh.sh
