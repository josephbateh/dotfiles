# Git Aliases
alias gs='git status'
alias gd='git diff'
alias gl='git log -3'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias ga='git add .'
alias gac='git add . && git commit'
alias gac-amend='git add . && git commit --amend'

# Directory Aliases
alias dot-ws='cd ~/.dotfiles'
alias root-ws='cd ~/root'
alias code-ws='cd ~/root/code'
alias go-ws='cd ~/root/code/go/src/github.com/josephbateh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
