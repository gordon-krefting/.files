export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export PATH=/usr/local/go/bin:$PATH

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="mh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

alias l='ls -lh'
alias la='ls -lAh'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/gkreftin/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/gkreftin/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/gkreftin/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/gkreftin/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh