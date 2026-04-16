vim.o.relativenumber = true     -- Show relative line numbers
vim.o.number = true             -- Show absolute line numbers

vim.o.ignorecase = true         -- Case-insensitive search by default
vim.o.smartcase = true          -- Case-sensitive if pattern contains uppercase
vim.o.hlsearch = true           -- Persist search highlights
vim.o.incsearch = true          -- Show matches incrementally as you type
vim.o.inccommand = "split"      -- Preview substitutions live as you type
vim.o.selection = "inclusive"   -- Include the character under cursor in selections

vim.o.tabstop = 2               -- Visual width of a tab character
vim.o.shiftwidth = 2            -- Width of an indentation step
vim.o.softtabstop = 2           -- Spaces inserted/removed when pressing Tab
vim.o.expandtab = true          -- Use spaces instead of tabs
vim.o.smartindent = true        -- Auto-indent new lines based on syntax
vim.o.breakindent = true        -- Wrapped lines continue visually indented

vim.o.splitbelow = true         -- Open horizontal splits below
vim.o.splitright = true         -- Open vertical splits to the right

vim.o.conceallevel = 0          -- Hide markup for bold and italic
vim.o.concealcursor = ""        -- Don't conceal on the cursor line

vim.o.termguicolors = true      -- Enable 24-bit RGB colors
vim.o.cursorline = true         -- Highlight the current line
vim.o.showmode = false          -- Hide the mode (since it's in the status line)
vim.o.signcolumn = "yes"        -- Always show sign column (prevents layout shift)
vim.o.wrap = false              -- Disable line wrapping
vim.o.list = true               -- Show invisible characters

vim.o.updatetime = 250          -- Delay before swap write and CursorHold (ms)
vim.o.timeoutlen = 400          -- Timeout for mapped key sequences (ms)
vim.o.ttimeoutlen = 0           -- Timeout for terminal key codes (ms)

vim.o.scrolloff = 4             -- Minimum lines above/below cursor
vim.o.sidescrolloff = 8         -- Minimum columns left/right of cursor

vim.o.mouse = "a"               -- Enable mouse mode
vim.o.confirm = true            -- Prompt to save changes instead of error
vim.o.clipboard = "unnamedplus" -- Sync with system clipboard

vim.o.autoread = true           -- Reload files changed outside of Neovim
vim.o.autowrite = false         -- Don't auto-save buffers on switch

vim.o.backup = false            -- Don't create backup files
vim.o.swapfile = false          -- Don't create swap files
vim.o.undofile = true           -- Persist undo history across sessions
vim.o.undodir = vim.fn.stdpath("data") .. "/undodir"

vim.o.winblend = 0                          -- Floating window pseudo-transparency
vim.o.pumblend = 10                         -- Popup menu pseudo-transparency
vim.o.pumheight = 10                        -- Max items in the popup menu
vim.o.completeopt = "menu,menuone,noselect" -- Show menu, require explicit select

vim.opt.iskeyword:append("-")               -- Treat hyphenated-words as a single word
vim.opt.fillchars:append({ eob = " " })
vim.opt.listchars = {
  precedes = "‹",
  extends = "›",
  trail = "·",
  nbsp = "␣",
  tab = "» ",
}
