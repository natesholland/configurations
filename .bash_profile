
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ git(\1)/'
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

#Trying to edit my prompt
PS1="\u: \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] \$ "

#setting the color scheme so directories and executables look different
export CLICOLOR=1
export LSCOLORS=GxxxxxxxCxxxxxxxxxxxxx

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

#Aliasing some commonly used commands
alias ..="cd .."
alias ~="cd ~"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


export PATH=/usr/local/bin:$PATH
export PGHOST=localhost
export PATH=/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


source ~/.profile
