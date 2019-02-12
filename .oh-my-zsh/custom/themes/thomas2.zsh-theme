local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#local kubectx2=pwd | grep -q client_clearing && kubectl config current-context

#PROMPT='%{$fg[cyan]%}%c ${kubectx2}${ret_status}'
zle -N zle-keymap-select
MODE_INDICATOR="%{$fg_bold[red]%}<%{$fg[red]%}<<%{$reset_color%}"
function zle-keymap-select() {
  zle reset-prompt
  zle -R
}

function vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/}"
}

PROMPT='%{$fg[cyan]%}%c ${ret_status}'
RPROMPT='$(vi_mode_prompt_info) %{$fg[blue]%}$(git_current_branch)%{$reset_color%}'


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
