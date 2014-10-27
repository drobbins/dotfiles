source ~/.aliases
# Path
export PATH=./node_modules/bin:~/apps/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:$PATH

# Assorted Completions
if [ `uname` == Darwin ]
then
    source /opt/boxen/homebrew/etc/bash_completion.d/*
    source /opt/boxen/homebrew/etc/bash_completion.d/git-prompt.sh
else
    source /etc/bash_completion.d/git
    source ~/dotfiles/git/git-prompt.sh
fi
#source /usr/local/etc/bash_completion.d/git-completion.bash
#source /usr/local/etc/bash_completion.d/git-flow-completion.bash
#source /usr/local/etc/bash_completion.d/hub.bash_completion.sh

# Git Prompt
PS1='\[\e[1;31m\]\u\[\e[m\] at \[\e[1;31m\]\h\[\e[m\] in \[\e[1;31m\]\W\[\e[m\]$(__git_ps1 " on \[\e[1;31m\]%s\[\e[m\]")\n\[\e[1;31m\]$\[\e[m\] '

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

# Boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

<<<<<<< HEAD
## ShellShock
#env x='() { :;}; echo "WARNING: SHELLSHOCK DETECTED"' \
#    bash --norc -c ':' 2>/dev/null;
#
# Commented out since it breaks ansible:
#TASK: [robbinsd | link bash dotfiles] *****************************************
#changed: [default] => (item=.bashrc)
#fatal: [default] => failed to transfer file to /home/robbinsd/.ansible/tmp/ansible-tmp-1411828379.02-87221669906962/file:
#Received message too long 1463898702
=======
# ShellShock
env x='() { :;}; echo "WARNING: SHELLSHOCK DETECTED"' \
    bash --norc -c ':' 2>/dev/null;

# Meteor Packages
export PACKAGE_DIRS="/Users/robbinsd/Desktop/NoCloud/MeteorPackages"

>>>>>>> Include a local directory for meteor package editing
