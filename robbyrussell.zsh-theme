# this tests for the presence of rvm
# if its loaded, it'll add the prompt
function rvm_info_for_prompt {
  ruby_version=$(~/.rvm/bin/rvm-prompt u v)
  if [ -n "$ruby_version" ]; then
    echo "[$ruby_version]"
  fi
}

function time_info {
  date '+%H:%M:%S'
}

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='${ret_status}%{$fg_bold[green]%}$(rvm_info_for_prompt)%{$fg_bold[green]%}%{$fg_bold[green]%}%p %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
