-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false

vim.opt.conceallevel = 0

vim.opt.spell = true
vim.opt.spelloptions = "camel"

vim.opt.list = true
vim.opt.listchars = {
  trail = "-",
  nbsp = "␣",
  tab = "⟩ ",
}

vim.opt.fillchars = {
  fold = " ",

  horiz = "━",
  horizup = "┻",
  horizdown = "┳",

  vert = "┃",
  vertleft = "┫",
  vertright = "┣",

  verthoriz = "╋",
}
