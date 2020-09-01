alias tmux="tmux -2 -u"
if which tmux 2>&1 >/dev/null; then
  test -z "$TMUX" && (tmux attach || tmux new-session)
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.rbenv/bin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# export TERM=xterm-256color
# export NVM_LAZY_LOAD=true

export ZSH_THEME="candy"
# export ZSH_THEME="powerlevel9k/powerlevel9k"


CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rbenv ruby gem tmux nvm npm node docker)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias gitclean='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias vim=nvim
alias open='wsl-open'
alias python=python3
alias pip=pip3

# git shortcuts
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

if [[ -r /usr/local/lib/python3.8/dist-packages/ ]];
then 
  export PYTHON3_PACKAGES='/usr/local/lib/python3.8/dist-packages/'
else
  export PYTHON3_PACKAGES='/usr/local/lib/python3.8/site-packages/'
fi

#powerline
if [[ -r $PYTHON3_PACKAGES/powerline/bindings/zsh/powerline.zsh ]]; 
  then source $PYTHON3_PACKAGES/powerline/bindings/zsh/powerline.zsh
fi

# homebrew
if [[-r /home/linuxbrew/.linuxbrew]];
then
  eval "$(/home/linuxbrew/.linuxbrew/bin/rbenv init -)"
  eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
  export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
fi
