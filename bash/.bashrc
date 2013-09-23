source ~/.aliases
# Path
export PATH=~/apps/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Git Prompt
source /usr/local/etc/bash_completion.d/git-prompt.sh
PS1='\[\033[G\]\[\e[1;31m\][\W$(__git_ps1 "@%s")]\[\e[m\] '

# Assorted Completions
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-flow-completion.bash
source /usr/local/etc/bash_completion.d/hub.bash_completion.sh

# Use Homebrews Ruby Gems
export GEM_HOME='/usr/local/Cellar/gems/1.8'

# Node
export NODE_PATH='/usr/local/lib/node_modules'

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

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

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
