export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(load disk_usage ram battery)
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_USER_ICON="\uF415" # 
POWERLEVEL9K_ROOT_ICON="\uF09C"
POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_VCS_GIT_ICON='\uF408 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408 '
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="blue"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="yellow"

ZSH_DISABLE_COMPFIX=true

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  iterm2
  macports
  man
  osx
  python
  composer
  command-not-found
  dircycle
  history
  vscode
  yarn
  npm
  pip
  sudo
  brew
  enhancd
  zsh-syntax-highlighting
  zsh-completions
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source $ZSH/plugins/enhancd/init.sh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=243'

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE

# Alias
alias es_cd='cd ~/Documents/es-project'
alias es_env='source venv/bin/activate'
alias es_build='pip install -r es-site/conf/py/REQ-DEV && ./es-site/es/manage.py migrate'
alias es_start='overmind start'
alias es_prune='find . -name "*.pyc" -exec rm -f {} \;'

