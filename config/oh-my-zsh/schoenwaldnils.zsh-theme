PROMPT='%{$fg[blue]%}%c %{$fg_bold[yellow]%}%{$reset_color%}'
RPROMPT='$(git_super_status)'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_SEPARATOR=""
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[yellow]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{ ↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{ ↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{ *%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%{✔%G%}"
