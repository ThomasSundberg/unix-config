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
  kubectl,
  zsh-syntax-highlighting,
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
# Turn off terminal history sharing
unsetopt share_history
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS 	 # Don't write duplicate entries in the history file.
source $HOME/.aliases

# run first time 
# source $HOME/.vim/pack/install.sh

# KEYBINDS
bindkey '^[[Z' forward-word

bindkey -v
export KEYTIMEOUT=1
#bindkey "^[[A" history-incremental-search-backward 
#bindkey "^[[B" history-incremental-search-forward 

export PATH=/Users/thomas.sundberg/Scripts:$PATH
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export MINIUM_PATH=/Users/thomas.sundberg/Projects/client_clearing

# Restore fuzzy history arrows when using VI mode
# start typing + [Up-Arrow] - fuzzy find history forward
autoload -U up-line-or-beginning-search
zle -N up-line-or-beginning-search
bindkey "${terminfo[kcuu1]}" up-line-or-beginning-search
# start typing + [Down-Arrow] - fuzzy find history backward
autoload -U down-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "${terminfo[kcud1]}" down-line-or-beginning-search
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!! 
#
#
#
#
export SDKMAN_DIR="/Users/thomas.sundberg/.sdkman" 
[[ -s "/Users/thomas.sundberg/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/thomas.sundberg/.sdkman/bin/sdkman-init.sh"



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
