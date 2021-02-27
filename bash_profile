# for Brew
export PATH="/usr/local/bin:$PATH"
# Hides the default login message
export BASH_SILENCE_DEPRECATION_WARNING=1
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
# Enable colors in bash
export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced
 
# get current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# find username@hostname:$ 
export PS1="\[\033[01;32m\]\u:\[\033[01;34m\]\w\[\033[0;32m\]\$(parse_git_branch)\[\033[00m\]\$ "
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/tammy/.sdkman"
[[ -s "/Users/tammy/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/tammy/.sdkman/bin/sdkman-init.sh"

#export CONFLUENT_HOME=/Users/tammy/Downloads/confluent-6.0.0
#export PATH=$PATH:$CONFLUENT_HOME/bin
#export JAVA_HOME=$(/usr/libexec/java_home)
#export JAVA_HOME

#export DB_URL=jdbc:postgresql://192.168.99.100:5432
#export DB_USER=myusername
#export DB_PWD=mypassword

export JAVA_HOME_8=$(/usr/libexec/java_home -v1.8)
export JAVA_HOME_11=$(/usr/libexec/java_home -v11)
export JAVA_HOME_15=$(/usr/libexec/java_home -v15)

export JAVA_HOME=$JAVA_HOME_11

## Install maven
export PATH=/opt/apache-maven/bin:$PATH


export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost
alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'
alias show-pg-status='pg_ctl status'
alias restart-pg='pg_ctl reload'
mkdir_cd () {
        mkdir -p --"$1" &&
        cd -P -- "$1"
}
if [ -f `brew --prefix`/etc/bash_completion ]; then
            . `brew --prefix`/etc/bash_completion
fi

# Powerline
#export LC_ALL=en_US.UTF-8
#export PATH="$PATH:$HOME/Library/Python/3.9/bin"
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#source $HOME/Library/Python/3.9/lib/python/site-packages/powerline/bindings/bash/powerline.sh

## starship
eval "$(starship init bash)"
#export STARSHIP_CONFIG=~/.starship
