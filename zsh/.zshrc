export XDG_CONFIG_HOME="$HOME/.config"
export BREW="/opt/homebrew"
export BUN="$HOME/.bun"
export NVM="$HOME/.nvm"
export ZSH="$HOME/.oh-my-zsh"

export PATH="$BREW/bin:$BREW/sbin:$PATH"
export PATH="$PATH:$BREW/opt/postgresql@13/bin"

export PATH="$PATH:$BUN/bin"
export PATH="$PATH:./node_modules/.bin"

export EDITOR="nvim"

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

alias n="nvim"
alias nv="nvim"
alias lg="lazygit"
alias sb="supabase"

alias kn="killall node -9"

alias flash="qmk flash --env CONVERT_TO=promicro_rp2040"

alias ssh-argo-dev="bash /Users/wagerfield/Documents/work/make/prg/argo-api/scripts/ssh-tunnel-to-argo-database/ssh-tunnel-to-argo-database.sh dev"
alias ssh-argo-prod="bash /Users/wagerfield/Documents/work/make/prg/argo-api/scripts/ssh-tunnel-to-argo-database/ssh-tunnel-to-argo-database.sh prod"

# Config

ZSH_THEME="wagerfield"
HIST_STAMPS="dd/mm/yyyy"

plugins=(git wd)

source $BUN/_bun
source $NVM/nvm.sh
source $NVM/bash_completion
source $ZSH/oh-my-zsh.sh

eval "$(brew shellenv)"
eval "$(zoxide init zsh)"

autoload -Uz compinit
compinit

# bun completions
[ -s "/Users/wagerfield/.bun/_bun" ] && source "/Users/wagerfield/.bun/_bun"
