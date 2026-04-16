vim.g.mapleader = " "

-- install lazy.nvim
local lazy_repo = "https://github.com/folke/lazy.nvim.git"
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazy_path) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazy_repo, lazy_path })
end

vim.opt.rtp:prepend(lazy_path)

-- config files
require("options")
require("keymaps")
require("commands")

-- setup lazy.nvim
-- https://lazy.folke.io
require("lazy").setup({
  checker = {
    enabled = true, -- Check for plugin updates
    notify = false, -- Don't notify about updates
  },
  defaults = {
    lazy = true, -- Lazy load plugins by default
  },
  install = {
    colorscheme = {
      "everforest",
      "quiet",
    },
  },
  spec = {
    { import = "plugins" }, -- Load plugins from lua/plugins/*.lua
  },
})
