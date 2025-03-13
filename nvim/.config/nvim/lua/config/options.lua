-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false
vim.opt.conceallevel = 0
vim.opt.spell = true
vim.opt.list = true
vim.opt.listchars = {
  precedes = "«",
  extends = "»",
  trail = "-",
  nbsp = "␣",
  tab = "→ ",
}
