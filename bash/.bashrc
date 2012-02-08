export PATH=$PATH:/usr/local/sbin
# PS1='\[\e[1;31m\][\W]\[\e[m\] '
source /usr/local/etc/bash_completion.d/git-completion.bash
PS1='\[\e[1;31m\][\W$(__git_ps1 "@%s")]\[\e[m\] '

#nginx
alias nginx_start="launchctl load /usr/local/Cellar/nginx/1.0.7/org.nginx.nginx.plist"
alias nginx_stop="launchctl unload /usr/local/Cellar/nginx/1.0.7/org.nginx.nginx.plist"
alias nginx_restart="nginx_stop; nginx_start;"

# php-fpm
alias phpfm_start="/usr/local/Cellar/php/5.3.8/sbin/php-fpm"

# Hub
alias git=hub
export GEM_HOME='/usr/local/Cellar/gems/1.8'

# Node
export NODE_PATH='/usr/local/lib/node_modules'

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
