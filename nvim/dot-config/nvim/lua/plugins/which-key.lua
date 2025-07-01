local border = require("utils.border")

return {
  -- https://github.com/folke/which-key.nvim#readme
  "folke/which-key.nvim",
  opts = {
    delay = 250,
    win = {
      border = border.box,
      padding = { 0, 1 },
    },
  },
}
