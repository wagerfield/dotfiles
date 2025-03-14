return {
  -- https://github.com/folke/trouble.nvim#readme
  "folke/trouble.nvim",
  opts = {
    auto_close = true,
    focus = true,
    win = {
      position = "bottom",
      size = 0.25,
    },
    modes = {
      symbols = {
        mode = "lsp_document_symbols",
        focus = true,
        win = {
          position = "left",
          size = 0.25,
        },
        filter = {
          any = {
            ft = { "typescript" },
            kind = {
              "Function",
            },
          },
        },
      },
    },
  },
}
