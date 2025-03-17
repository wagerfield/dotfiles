return {
  {
    -- https://github.com/AlexvZyl/nordic.nvim#readme
    "AlexvZyl/nordic.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      cursorline = {
        theme = "light",
        blend = 0.5,
      },
      after_palette = function(palette)
        -- local border_fg = palette.gray3
        --
        -- palette.border_fg = border_fg
        -- palette.fg_float_border = border_fg
        -- palette.fg_popup_border = border_fg
      end,
      on_highlight = function(H, P)
        H.YankyYanked = { link = "IncSearch" }
        H.YankyPut = { link = "IncSearch" }

        H.FloatTitle.bg = P.bg_float

        H.IndentBlanklineChar = { fg = P.orange.base }
        H.IndentBlanklineContextChar = { fg = P.yellow.base }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    lazy = false,
    opts = {
      colorscheme = "nordic",
    },
  },
}
