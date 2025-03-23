return {
  -- https://github.com/neanias/everforest-nvim#readme
  "neanias/everforest-nvim",
  name = "everforest",
  opts = {
    show_eob = false,
    on_highlights = function(hl, pal)
      hl.CurrentWord.bold = false

      -- WhichKey
      hl.WhichKeyNormal = { fg = pal.none, bg = pal.bg0 }
      hl.WhichKeyBorder = { fg = pal.bg4, bg = pal.bg0 }
      hl.WhichKeyTitle = { fg = pal.none, bg = pal.bg0 }
      hl.WhichKeyDesc = { link = "Fg" }
    end,
  },
}
