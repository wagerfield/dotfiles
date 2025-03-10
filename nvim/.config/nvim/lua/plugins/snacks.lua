return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      formatters = {
        file = {
          filename_first = true,
          truncate = 80,
        },
      },
    },
    zen = {
      show = {
        statusline = false,
      },
      toggles = {
        dim = false,
        git_signs = true,
        mini_diff_signs = true,
      },
    },
  },
}
