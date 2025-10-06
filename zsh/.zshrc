export XDG_CONFIG_HOME="$HOME/.config"
export PNPM_HOME="$HOME/Library/pnpm"

export BUN="$HOME/.bun"
export NVM="$HOME/.nvm"
export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/go"

export BREW="/opt/homebrew"
export PATH="$BREW/bin:$BREW/sbin:$PATH"
export PATH="$PATH:$BREW/opt/postgresql@13/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$BUN/bin"
export PATH="$PATH:$PNPM_HOME"
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:$GOPATH/bin"

export PATH="$PATH:$HOME/.lmstudio/bin"
export PATH="$PATH:$HOME/.codeium/windsurf/bin"

export EDITOR="nvim"

# aliases

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

alias p="pnpm"
alias pd="pnpm run dev"
alias pb="pnpm run build"
alias pt="pnpm run test"

alias yr="yarn run"
alias yd="yarn run dev"
alias yb="yarn run build"
alias ys="yarn run start"
alias yt="yarn run test"

alias c="claude"

alias f="fzf"
alias fz="fzf"

alias n="nvim"
alias nv="nvim"

alias lg="lazygit"
alias sb="supabase"

alias kn="killall node -9"

alias lts="nvm use --lts"

alias nip="install-global-npm-packages"

alias fkb="qmk flash --no-eject"

alias zedp="zed-preview"
alias zep="zed-preview"

alias ssh-argo-dev="bash /Users/wagerfield/Documents/work/make/prg/argo-api/scripts/ssh-tunnel-to-argo-database/ssh-tunnel-to-argo-database.sh dev"
alias ssh-argo-prod="bash /Users/wagerfield/Documents/work/make/prg/argo-api/scripts/ssh-tunnel-to-argo-database/ssh-tunnel-to-argo-database.sh prod"

# config

ZSH_THEME="wagerfield"
HIST_STAMPS="dd/mm/yyyy"

plugins=(git wd)

tabs -2

source $BUN/_bun
source $NVM/nvm.sh
source $NVM/bash_completion
source $ZSH/oh-my-zsh.sh

eval "$(brew shellenv)"
eval "$(zoxide init zsh)"

# brew completions
autoload -Uz compinit
compinit

# bun completions
[ -s "/Users/wagerfield/.bun/_bun" ] && source "/Users/wagerfield/.bun/_bun"

# yazi quit cwd
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# install global npm packages
function install-global-npm-packages() {
	local packages_file="$HOME/.config/npm/global-packages.txt"

	if [[ ! -f "$packages_file" ]]; then
		echo "Error: $packages_file not found"
		return 1
	fi

	echo "Installing global npm packages..."
	grep -v '^#\|^$' "$packages_file" | xargs npm install -g
}

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/wagerfield/.lmstudio/bin"
# End of LM Studio CLI section

# Added by Docker Desktop to enable Docker CLI completions
fpath=(/Users/wagerfield/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI section
