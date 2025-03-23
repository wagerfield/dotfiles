-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.g.lazyvim_eslint_auto_format = true
vim.g.lazyvim_prettier_needs_config = true

vim.opt.conceallevel = 0

vim.opt.list = true
vim.opt.listchars = {
  trail = "·",
  nbsp = "_",
  tab = "> ",
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
