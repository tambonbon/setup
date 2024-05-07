# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to brew
export PATH="/opt/homebrew/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="wedisagree"

# Set JAVA_HOME
export JAVA_HOME_11=$(/usr/libexec/java_home -v11)
export JAVA_HOME_8=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME=$JAVA_HOME_8

# Set Maven
export PATH=/opt/apache-maven/bin:$PATH

# Set nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Set DOTNET
export DOTNET_ROOT=$HOME/.dotnet
export PATH=$PATH:$HOME/.dotnet
export PATH=$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools

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

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Load Angular CLI autocompletion.
#source <(ng completion script)
