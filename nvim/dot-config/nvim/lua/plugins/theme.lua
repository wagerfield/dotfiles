return {
  {
    -- https://github.com/rebelot/kanagawa.nvim#readme
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa")
    end,
  },
  {
    -- https://github.com/neanias/everforest-nvim#readme
    "neanias/everforest-nvim",
    name = "everforest",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("everforest")
    end,
  }
}
