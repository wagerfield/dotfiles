local utils = require("utils")

return {
  -- https://github.com/folke/which-key.nvim#readme
  "folke/which-key.nvim",
  opts = {
    delay = 250,
    win = {
      border = utils.borders.heavy,
      padding = { 0, 1 },
    },
  },
}
