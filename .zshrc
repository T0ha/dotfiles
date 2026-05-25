#export DEFAULT_USER=$USER
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# export PROMPT=">"
ZSH_THEME="bureau"
#ZSH_THEME="norm"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Don't enable virtualenv!!!
export PATH="/usr/local/opt/python/libexec/bin:$HOME/.nitrogen/bin:/opt/local/bin:/opt/local/sbin:/usr/local/sbin:${PATH}"
plugins=(git autojump rebar dircycle python ssh-agent brew jira macos wd mix-fast tmuxinator docker direnv kubectl)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
#source /usr/local/bin/virtualenvwrapper.sh


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='nvim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# GPG
export GPG_TTY=$(tty)

# GAE
#source /opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
#source /opt/homebrew-cask/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias nitrogen="~/.nitrogen/bin/nitrogen"
#alias hyde='~/.asdf/installs/python/2.7.15/bin/hyde'
stty -ixon
bindkey '^s' self-insert
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin:/opt/homebrew/bin:/opt/homebrew/sbin:${PATH}"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:/usr/local/opt/coreutils/bin:/usr/local/opt/make/libexec/gnubin:/usr/local/opt/freetds@0.91/bin:/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.asdf/shims:$PATH"
. /opt/homebrew/share/zsh/site-functions

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/ins/Documents/projects/direct/eon/repo/eon_test/dsl-sandbox/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/ins/Documents/projects/direct/eon/repo/eon_test/dsl-sandbox/node_modules/tabtab/.completions/electron-forge.zsh

# Erlang & Elixir history
export ERL_AFLAGS="-kernel shell_history enabled"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/t0ha/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/opt/homebrew/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/opt/homebrew/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/opt/homebrew/anaconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/opt/homebrew/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
post_cmd_hook() {
  espeak "Finished ${PWD##*/}" &|
}

add-zsh-hook precmd post_cmd_hook

tmux_window_name_update_hook() {
  if [[ -n "$TMUX" ]]; then
    tmux rename-window "$(basename "$PWD")"
  fi
}

add-zsh-hook chpwd tmux_window_name_update_hook

fpath=(/Users/t0ha/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
