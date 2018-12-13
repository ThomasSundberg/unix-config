# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/thomas.sundberg/.oh-my-zsh
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="thomas2"

# Allows for ../ completion
zstyle ':completion:*' special-dirs true

HIST_STAMPS="dd.mm.yyyy"

plugins=(
  git,
  colored-man-pages,
  per-directory-history,
  docker,
  autojump,
  aws,
  kubectl
)

source $ZSH/oh-my-zsh.sh
# Turn off terminal history sharing
unsetopt share_history
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS

source $HOME/.aliases

# run first time 
# source $HOME/.vim/pack/install.sh

# KEYBINDS
bindkey '^[[Z' forward-word

#
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=/Users/thomas.sundberg/Scripts:$PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export MINIUM_PATH=/Users/thomas.sundberg/Projects/client_clearing

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!! 
export SDKMAN_DIR="/Users/thomas.sundberg/.sdkman" 
[[ -s "/Users/thomas.sundberg/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/thomas.sundberg/.sdkman/bin/sdkman-init.sh"



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
