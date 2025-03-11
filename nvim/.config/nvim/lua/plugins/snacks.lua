require("snacks")

local exclude = { ".git", ".DS_Store", "node_modules" }

return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      formatters = {
        file = {
          filename_first = true,
          truncate = 80,
        },
      },
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          exclude = exclude,
        },
        files = {
          hidden = true,
          ignored = true,
          exclude = exclude,
        },
      },
    },
    zen = {
      toggles = {
        dim = false,
        git_signs = true,
        mini_diff_signs = true,
      },
    },
  },
}
