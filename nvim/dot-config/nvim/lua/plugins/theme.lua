return {
  {
    -- https://github.com/catppuccin/nvim#readme
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "auto",
      background = {
        light = "latte",
        dark = "frappe",
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    -- https://github.com/rebelot/kanagawa.nvim#readme
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = true,
  },
  {
    -- https://github.com/neanias/everforest-nvim#readme
    "neanias/everforest-nvim",
    name = "everforest",
    lazy = true,
  },
}
