_fishy_collapsed_wd() {
  echo $(pwd | perl -pe "
   BEGIN {
      binmode STDIN,  ':encoding(UTF-8)';
      binmode STDOUT, ':encoding(UTF-8)';
   }; s|^$HOME|~|g; s|/([^/])[^/]*(?=/)|/\$1|g
")
}

local user_color='green'; [ $UID -eq 0 ] && user_color='red'
PROMPT='%F{190%}%D{%a}-%T%f %{$fg_bold[cyan]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%} %{$fg[$user_color]%}$(_fishy_collapsed_wd)$(git_prompt_info)%{$reset_color%}%(!.#.>) '

if [[ $TERM != dumb ]]
then
local return_status="%{$fg_bold[red]%}%(?..%?)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'
fi

ZSH_THEME_GIT_PROMPT_PREFIX=" ("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
