prompt_history() {
echo -ne "$HISTCMD"
}

kernel() {
uname -r
}

PROMPT=$'%{$fg_bold[blue]%}┌─[%{$fg_bold[magenta]%}%n%{$fg[green]%}@%{$fg[magenta]%}%m%{$fg_bold[blue]%}]%{$reset_color%} - %{$fg_bold[blue]%}[%{$fg_bold[white]%}%~%{$fg_bold[blue]%}]%{$reset_color%} - %{$fg_bold[blue]%}[%b%{$fg[magenta]%}'%D{"%Y-%m-%d %H:%M:%S"}%b$'%{$fg_bold[blue]%}]
%{$fg_bold[blue]%}└─[%{$fg_bold[magenta]%}%?$(prompt_history)%{$fg_bold[blue]%}] <$(kernel)$(hg_prompt_info)>%{$reset_color%} '
PS2=$' \e[0;34m%}%B>%{\e[0m%}%b '

