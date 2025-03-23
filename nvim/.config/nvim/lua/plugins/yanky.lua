return {
  -- https://github.com/gbprod/yanky.nvim#readme
  "gbprod/yanky.nvim",
  opts = {
    highlight = {
      timer = 200,
    },
  },
  keys = {
    { "<c-p>", "<Plug>(YankyPreviousEntry)", desc = "Previous Yanky Entry" },
    { "<c-n>", "<Plug>(YankyNextEntry)", desc = "Next Yanky Entry" },
  },
}
