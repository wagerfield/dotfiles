export XDG_CONFIG_HOME="$HOME/.config"
export PNPM_HOME="$HOME/Library/pnpm"

export BOB="$HOME/.local/share/bob"
export BUN="$HOME/.bun"
export NVM="$HOME/.nvm"
export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/go"

export BREW="/opt/homebrew"
export PATH="$BREW/bin:$BREW/sbin:$PATH"
export PATH="$PATH:$BOB/nvim-bin"
export PATH="$PATH:$BREW/opt/postgresql@18/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$BUN/bin"
export PATH="$PATH:$PNPM_HOME"
export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:$GOPATH/bin"

export EDITOR="nvim"

# title

DISABLE_AUTO_TITLE=true
precmd() { print -Pn "\e]2;%1~\a" }

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

alias t="turbo"
alias td="turbo run dev"
alias tb="turbo run build"
alias ts="turbo run start"
alias tl="turbo run lint"
alias tt="turbo run test"

alias yr="yarn run"
alias yd="yarn run dev"
alias yb="yarn run build"
alias ys="yarn run start"
alias yt="yarn run test"

alias o="ollama"
alias c="claude"
alias lg="lazygit"
alias oc="opencode"
alias sb="supabase"
alias zd="zed-preview"
alias zedp="zed-preview"

alias f="fzf"
alias fz="fzf"

alias n="nvim"
alias nv="nvim"

alias kn="killall node -9"
alias lts="nvm use --lts"
alias fkb="qmk flash --no-eject"

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



### Global NPM Packages ###
function install-global-npm-packages() {
	local packages_file="$HOME/.config/npm/global-packages.txt"

	if [[ ! -f "$packages_file" ]]; then
		echo "Error: $packages_file not found"
		return 1
	fi

	echo "Installing global npm packages..."
	grep -v '^#\|^$' "$packages_file" | xargs npm install -g
}
### Global NPM Packages ###



### Docker Desktop ###
fpath=(/Users/wagerfield/.docker/completions $fpath)
autoload -Uz compinit
compinit
### Docker Desktop ###



### Antigravity ###
export PATH="/Users/wagerfield/.antigravity/antigravity/bin:$PATH"
### Antigravity ###



### OpenCode ###
_opencode_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" opencode --get-yargs-completions "${words[@]}"))
  IFS=$si
  if [[ ${#reply} -gt 0 ]]; then
    _describe 'values' reply
  else
    _default
  fi
}
if [[ "'${zsh_eval_context[-1]}" == "loadautofunc" ]]; then
  _opencode_yargs_completions "$@"
else
  compdef _opencode_yargs_completions opencode
fi
### OpenCode ###
