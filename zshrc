
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source $HOME/.rvm/scripts/rvm
# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'option: %d'
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' expand suffix
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/art-solopov/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob notify
unsetopt nomatch
bindkey -e
# End of lines configured by zsh-newuser-install

alias ls='ls --color'

autoload zkbd
source $HOME/.zkbd/xfce4-terminal-:0.0
[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char

autoload -U colors && colors
autoload -U promptinit && promptinit
PROMPT="%{$fg_bold[green]%}%n%{$reset_color%}@%{$fg_no_bold[cyan]%}%M%{$reset_color%} %~ %(!.#.>) "
RPROMPT="[ %D{%Y-%m-%d %H:%M:%S ]"

eval $(keychain --agents ssh --eval)
