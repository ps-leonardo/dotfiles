neofetch

autoload -U colors && colors
zle_highlight+=(paste:none)

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

alias ls="eza --colour=always --icons=always --group-directories-first --all"
alias v=nvim
alias m=mpv
alias q=exit

source $ZDOTDIR/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZDOTDIR/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZDOTDIR/plugins/zsh-completions/src $fpath)

bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
bindkey -M menuselect '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete

eval "$(zoxide init zsh)"

eval "$(starship init zsh)"
