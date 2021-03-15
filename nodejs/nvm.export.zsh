export NVM_DIR="$HOME/.nvm"  # add nvm dir
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# reinstall global packages (needed when switching with nvm)
alias nodeify="nvm reinstall-packages"
