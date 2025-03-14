return {
  -- https://github.com/gbprod/yanky.nvim#readme
  "gbprod/yanky.nvim",
  opts = {
    highlight = {
      on_yank = true,
      on_put = true,
      timer = 250,
    },
    textobj = {
      enabled = true,
    },
  },
  keys = {
    { "y", "<Plug>(YankyYank)", mode = { "n", "x" }, desc = "Yank text" },

    { "p", "<Plug>(YankyPutAfter)", mode = { "n", "x" }, desc = "Put yanked text after cursor" },
    { "P", "<Plug>(YankyPutBefore)", mode = { "n", "x" }, desc = "Put yanked text before cursor" },

    { "gp", "<Plug>(YankyGPutAfter)", mode = { "n", "x" }, desc = "Put yanked text after selection" },
    { "gP", "<Plug>(YankyGPutBefore)", mode = { "n", "x" }, desc = "Put yanked text before selection" },

    { "]p", "<Plug>(YankyPutIndentAfterLinewise)", desc = "Put indented after cursor (linewise)" },
    { "]P", "<Plug>(YankyPutIndentAfterLinewise)", desc = "Put indented after cursor (linewise)" },
    { "[p", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "Put indented before cursor (linewise)" },
    { "[P", "<Plug>(YankyPutIndentBeforeLinewise)", desc = "Put indented before cursor (linewise)" },

    { "<p", "<Plug>(YankyPutIndentAfterShiftLeft)", desc = "Put after and indent left" },
    { ">p", "<Plug>(YankyPutIndentAfterShiftRight)", desc = "Put after and indent right" },
    { "<P", "<Plug>(YankyPutIndentBeforeShiftLeft)", desc = "Put before and indent left" },
    { ">P", "<Plug>(YankyPutIndentBeforeShiftRight)", desc = "Put before and indent right" },

    { "=p", "<Plug>(YankyPutAfterFilter)", desc = "Put after applying a filter" },
    { "=P", "<Plug>(YankyPutBeforeFilter)", desc = "Put before applying a filter" },

    { "<c-p>", "<Plug>(YankyPreviousEntry)", desc = "Select previous yank entry" },
    { "<c-n>", "<Plug>(YankyNextEntry)", desc = "Select next yank entry" },
  },
}
