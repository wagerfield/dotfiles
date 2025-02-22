source $VIMRUNTIME/defaults.vim

set relativenumber  " Show relative line numbers
set number          " Show current line number
set ruler           " Show line and column number
set hlsearch        " Highlight search matches
set incsearch       " Show search matches in realtime
set tabstop=2       " Set tab width to 2 spaces
set autoindent      " Enable auto indentation
syntax on           " Enable syntax highlighting
colorscheme sorbet  " Set color scheme (habamax, slate, sorbet, wildcharm, zaibatsu)

if has('syntax') && has('eval')
  packadd! matchit
endif

