if [ -f ~/.bashrc ];
    then source ~/.bashrc ;
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="/Users/robbinsd/.sdkman"
# [[ -s "/Users/robbinsd/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/robbinsd/.sdkman/bin/sdkman-init.sh"
