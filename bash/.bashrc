source ~/.aliases
# Path
export PATH=~/apps/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Git Prompt
source /usr/local/etc/bash_completion.d/git-prompt.sh
PS1='\[\e[1;31m\]\u\[\e[m\] at \[\e[1;31m\]\h\[\e[m\] in \[\e[1;31m\]\w\[\e[m\]$(__git_ps1 " on \[\e[1;31m\]%s\[\e[m\]")\n\[\e[1;31m\]$\[\e[m\] '

# Assorted Completions
source /usr/local/etc/bash_completion.d/*
#source /usr/local/etc/bash_completion.d/git-completion.bash
#source /usr/local/etc/bash_completion.d/git-flow-completion.bash
#source /usr/local/etc/bash_completion.d/hub.bash_completion.sh

# Use Homebrews Ruby Gems
export GEM_HOME='/usr/local/Cellar/gems/1.8'

# Node
export NODE_PATH='/usr/local/lib/node_modules'

# Stardog
export STARDOG_HOME=/Users/robbinsd/Data/stardog

# Server Command
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}

# Z - A directory changer.
# https://github.com/rupa/z
# z, oh how i love you
# mkdir -p ~/code/z
# curl https://raw.github.com/rupa/z/master/z.sh > ~/code/z/z.sh
# chmod +x ~/code/z/z.sh
# add this to the bash_profile file if it aint there.
. ~/code/z/z.sh

# RVM
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
