return {
  -- { "RRethy/base16-nvim" },
  -- { "rose-pine/neovim" },
  {
    "AlexvZyl/nordic.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      bright_border = false,
      cursorline = {
        theme = "light",
        blend = 0.8,
      },
      noice = {
        style = "flat",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
      -- colorscheme = "rose-pine",
      -- colorscheme = "base16-black-metal-gorgoroth",
    },
  },
}
