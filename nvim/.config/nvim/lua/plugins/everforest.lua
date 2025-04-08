return {
  -- https://github.com/neanias/everforest-nvim#readme
  "neanias/everforest-nvim",
  name = "everforest",
  opts = {
    show_eob = false,
    on_highlights = function(hl, palette)
      hl.CurrentWord.bold = false

      -- Snacks Indent
      hl.SnacksIndent1 = { link = "Red" }
      hl.SnacksIndent2 = { link = "Yellow" }
      hl.SnacksIndent3 = { link = "Blue" }
      hl.SnacksIndent4 = { link = "Orange" }
      hl.SnacksIndent5 = { link = "Green" }
      hl.SnacksIndent6 = { link = "Purple" }
      hl.SnacksIndent7 = { link = "Aqua" }

      -- WhichKey
      hl.WhichKeyNormal = { link = "Normal" }
      hl.WhichKeyBorder = { link = "Grey" }
      hl.WhichKeyTitle = { link = "Title" }
      hl.WhichKeyDesc = { link = "Normal" }
    end,
  },
}
