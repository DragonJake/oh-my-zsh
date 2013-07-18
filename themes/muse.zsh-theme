#!/usr/bin/env zsh
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt promptsubst

autoload -U add-zsh-hook

PROMPT_SUCCESS_COLOR=$FG[117]
PROMPT_FAILURE_COLOR=$FG[124]
PROMPT_VCS_INFO_COLOR=$FG[242]
PROMPT_PROMPT=$FG[077]
HG_DIRTY_COLOR=$FG[133]
HG_CLEAN_COLOR=$FG[118]
HG_PROMPT_INFO=$FG[012]

PROMPT='%{$PROMPT_SUCCESS_COLOR%}%~%{$reset_color%} %{$HG_PROMPT_INFO%}$(hg_prompt_info)%{$HG_DIRTY_COLOR%}$(hg_prompt_status) %{$reset_color%}%{$PROMPT_PROMPT%}ᐅ%{$reset_color%} '

#RPS1="${return_code}"

ZSH_THEME_HG_PROMPT_PREFIX="("
ZSH_THEME_HG_PROMPT_SUFFIX="%{$HG_PROMPT_INFO%})"
ZSH_THEME_HG_PROMPT_DIRTY=" %{$HG_DIRTY_COLOR%}✘"
ZSH_THEME_HG_PROMPT_CLEAN=" %{$HG_CLEAN_COLOR%}✔"

ZSH_THEME_HG_PROMPT_ADDED="%{$FG[082]%}✚%{$reset_color%}"
ZSH_THEME_HG_PROMPT_MODIFIED="%{$FG[166]%}✹%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DELETED="%{$FG[160]%}✖%{$reset_color%}"
ZSH_THEME_HG_PROMPT_RENAMED="%{$FG[220]%}➜%{$reset_color%}"
ZSH_THEME_HG_PROMPT_UNMERGED="%{$FG[082]%}═%{$reset_color%}"
ZSH_THEME_HG_PROMPT_UNTRACKED="%{$FG[190]%}✭%{$reset_color%}"
