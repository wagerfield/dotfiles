export BUN="$HOME/.bun"
export NVM="$HOME/.nvm"
export ZSH="$HOME/.oh-my-zsh"
export BREW="/opt/homebrew"

export PATH="$PATH:$BUN/bin"
export PATH="$PATH:$BREW/bin"
export PATH="$PATH:./node_modules/.bin"

export EDITOR="code"

# Aliases

alias b="bun"
alias br="bun run"
alias bd="bun run dev"
alias bb="bun run build"
alias bs="bun run start"
alias bt="bun run test"

alias nr="npm run"
alias nd="npm run dev"
alias nb="npm run build"
alias ns="npm run start"
alias nt="npm run test"

alias yr="yarn run"
alias yd="yarn run dev"
alias yb="yarn run build"
alias ys="yarn run start"
alias yt="yarn run test"

alias sb="supabase"

alias kn="killall node -9"

# Config

ZSH_THEME="wagerfield"
HIST_STAMPS="dd/mm/yyyy"

plugins=(git wd)

source $BUN/_bun
source $NVM/nvm.sh
source $NVM/bash_completion
source $ZSH/oh-my-zsh.sh
