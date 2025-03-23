local bl = require("bufferline")

return {
  -- https://github.com/akinsho/bufferline.nvim#readme
  "akinsho/bufferline.nvim",
  enabled = true,
  opts = {
    ---@type bufferline.Options
    options = {
      mode = "buffers",
      style_preset = bl.style_preset.minimal,
      buffer_close_icon = "󰅖",
      close_icon = "󰅖",
      separator_style = "thin",
      max_name_length = 16,
      tab_size = 4,
      offsets = {},
    },
  },
}
