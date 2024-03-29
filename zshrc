# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# for Brew
export PATH="/usr/local/bin:$PATH"
# Hides the default login message
export BASH_SILENCE_DEPRECATION_WARNING=1

# Path to your oh-my-zsh installation.
export ZSH="/Users/tammy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="wedisagree"

# Set JAVA_HOME
export JAVA_HOME_11=$(/usr/libexec/java_home -v11)
export JAVA_HOME_8=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME_17=$(/usr/libexec/java_home -v17)
#export JAVA_HOME=$JAVA_HOME_11
export JAVA_HOME=$JAVA_HOME_8
#export JAVA_HOME=$JAVA_HOME_17
# Set Maven
export PATH=/opt/apache-maven/bin:$PATH

# Set SPARK_HOME
export SPARK_HOME=/usr/local/Cellar/apache-spark/3.4.1/libexec
export PATH=$SPARK_HOME/bin:$PATH


# Set HADOOP
export HADOOP_HOME=/usr/local/cellar/hadoop/3.3.1/libexec
export PATH=$HADOOP_HOME/bin:$PATH
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop

alias hadoop_start=$HADOOP_HOME/sbin/start-all.sh
alias hadoop_stop=$HADOOP_HOME/sbin/stop-all.sh

# Path to virtualev
export VIRTUAL_ENV='/Users/tammy/Library/Python/3.9/bin'
export PATH=$VIRTUAL_ENV/bin:$PATH

# Set Zeppelin
export ZEPPELIN_HOME=/Users/tammy/zeppelinNoteBooks/zeppelin-0.9.0-bin-all

# Set Rust
. "$HOME/.cargo/env"

# Set flutter
export PATH="$PATH:/Users/tammy/Downloads/zip/flutter/bin"

# Set Kafka
export KAFKA_HOME=/Users/tammy/kafkaProjects/kafka_2.13-2.6.0
export PATH=$KAFKA_HOME/bin:$PATH

# Set nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Change vim to nvim
alias vim="nvim"
alias vi="nvim"

# Remove share history
setopt noincappendhistory
setopt nosharehistory
unsetopt share_history

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=1000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

# Some aliases
alias mkdircd='eval {mkdir,cd}'
alias ll='ls -lt'
alias rmv='mv --force -t ~/.local/share/Trash '
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	docker
	docker-compose
)

#########
# TAB COMPLETION FOR AZURE
#########
#autoload -U +X bashcompinit && bashcompinit
#source ~/.az.completion
### 


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
unsetopt share_history
setopt no_share_history

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tammy/.sdkman"
[[ -s "/Users/tammy/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tammy/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Created by `pipx` on 2022-12-18 11:39:34
export PATH="$PATH:/Users/tammy/.local/bin"
