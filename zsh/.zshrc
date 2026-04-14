# ========================================
# ENV VARS
# ========================================

export EDITOR="nvim"

export BREW="/opt/homebrew"
export XDG_CONFIG_HOME="$HOME/.config"
export PNPM_HOME="$HOME/Library/pnpm"
export GOPATH="$HOME/go"

export BUN="$HOME/.bun"
export NVM="$HOME/.nvm"
export ZSH="$HOME/.oh-my-zsh"

export BOB="$HOME/.local/share/bob"
export BOB_USED_VERSION="$(cat $BOB/used)"
export VIMRUNTIME="$BOB/$BOB_USED_VERSION/share/nvim/runtime"

# ========================================
# PATH
# ========================================

export PATH="$BREW/bin:$BREW/sbin:$PATH"           # Homebrew
export PATH="$PATH:$BREW/opt/postgresql@18/bin"    # PostgreSQL
export PATH="$PATH:$BREW/opt/rustup/bin"           # Rust
export PATH="$PATH:$HOME/.local/bin"               # Local bin
export PATH="$PATH:$BOB/nvim-bin"                  # Bob (Neovim)
export PATH="$PATH:$BUN/bin"                       # Bun
export PATH="$PATH:$PNPM_HOME"                     # pnpm
export PATH="$PATH:$GOPATH/bin"                    # Go
export PATH="$PATH:./node_modules/.bin"            # Local node_modules

# ========================================
# TITLE
# ========================================

DISABLE_AUTO_TITLE=true
precmd() { print -Pn "\e]2;%1~\a" }

# ========================================
# ALIASES
# ========================================

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
alias zp="zed-preview"
alias zedp="zed-preview"

alias f="fzf"
alias fz="fzf"

alias n="nvim"
alias nv="nvim"

alias kn="killall node -9"
alias lts="nvm use --lts"
alias fkb="qmk flash --no-eject"
alias src="source ~/.zshrc"

# ========================================
# OH MY ZSH
# ========================================

HIST_STAMPS="dd/mm/yyyy"
ZSH_THEME="wagerfield"

plugins=(git wd)
tabs -2

# ========================================
# COMPLETIONS
# ========================================

# Add completion paths before initializing compinit
fpath=(/Users/wagerfield/.docker/completions $fpath)

# Run compinit before sourcing files
autoload -Uz compinit
compinit

eval "$(brew shellenv)"
eval "$(zoxide init zsh)"
eval "$(tv init zsh)"
eval "$(fzf --zsh)"

source $BUN/_bun
source $NVM/nvm.sh
source $NVM/bash_completion
source $ZSH/oh-my-zsh.sh

# ========================================
# YAZI
# ========================================

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

# ========================================
# OPENCODE
# ========================================

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

# ========================================
# FORGE
# ========================================

# Add required zsh plugins if not already present
if [[ ! " ${plugins[@]} " =~ " zsh-autosuggestions " ]]; then
  plugins+=(zsh-autosuggestions)
fi
if [[ ! " ${plugins[@]} " =~ " zsh-syntax-highlighting " ]]; then
  plugins+=(zsh-syntax-highlighting)
fi

# Load forge shell plugin (commands, completions, keybindings) if not already loaded
# if [[ -z "$_FORGE_PLUGIN_LOADED" ]]; then
#   eval "$(forge zsh plugin)"
# fi

# Load forge shell theme (prompt with AI context) if not already loaded
# if [[ -z "$_FORGE_THEME_LOADED" ]]; then
#   eval "$(forge zsh theme)"
# fi
