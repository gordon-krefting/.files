export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=/usr/local/go/bin:$PATH
export PATH=/Library/TeX/Distributions/Programs/texbin:$PATH
export PATH=$HOME/.gem/ruby/2.5.0/bin:$PATH
export PATH=$HOME/.local:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$PATH:.

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="mh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  #vi-mode
)

source $ZSH/oh-my-zsh.sh

alias l='ls -lh'
alias la='ls -lAh'

export VISUAL=vim
export EDITOR="$VISUAL"

# window title
DISABLE_AUTO_TITLE="true"
function precmd () {
  #window_title="\033]0;$USER@$HOST:${PWD/#$HOME/~}\007"
  window_title="\033]0;${PWD/#$HOME/~} ($USER@$HOST)\007"
  echo -ne "$window_title"
}
function preexec () {
  window_title="\033]0;$1 ($USER@$HOST)\007"
  echo -ne "$window_title"
}


# Stuff for nvm and serverless autocompletion. Looks weird, but works?

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/gkreftin/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/gkreftin/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/gkreftin/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/gkreftin/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

$HOME/.files/welcome.sh
