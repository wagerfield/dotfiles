local smart_cursor_modes = { "n", "v", "i", "t" }

return {
  -- https://github.com/mrjones2014/smart-splits.nvim#readme
  "mrjones2014/smart-splits.nvim",
  build = "./kitty/install-kittens.bash",
  lazy = false,
  opts = {},
  keys = {
    { "<c-k>", "<cmd>SmartCursorMoveUp<cr>", mode = smart_cursor_modes },
    { "<c-j>", "<cmd>SmartCursorMoveDown<cr>", mode = smart_cursor_modes },
    { "<c-h>", "<cmd>SmartCursorMoveLeft<cr>", mode = smart_cursor_modes },
    { "<c-l>", "<cmd>SmartCursorMoveRight<cr>", mode = smart_cursor_modes },
    { "<c-up>", "<cmd>SmartCursorMoveUp<cr>", mode = smart_cursor_modes },
    { "<c-down>", "<cmd>SmartCursorMoveDown<cr>", mode = smart_cursor_modes },
    { "<c-left>", "<cmd>SmartCursorMoveLeft<cr>", mode = smart_cursor_modes },
    { "<c-right>", "<cmd>SmartCursorMoveRight<cr>", mode = smart_cursor_modes },
  },
}
