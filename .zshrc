# The following lines were added by compinstall

zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '+' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=4
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/t0ha/.zshrc'

autoload -Uz compinit
compinit
#Prompt configuration
autoload -Uz promptinit
promptinit
autoload -Uz colors && colors
export PROMPT="%{$fg[white]%}(%n@%m)%#"

setopt noflowcontrol
setopt vi
bindkey '^s' self-insert

git_prompt() {
  temp=`git symbolic-ref HEAD 2>/dev/null | cut -d / -f 3`
  if [ "$temp" != "" ]; then echo "$temp:"; fi
}

export RPROMPT="[$(git_prompt)%{$fg[green]%}%B%~%b%{$reset_color%}]"
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
