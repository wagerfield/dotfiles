return {
  -- https://github.com/neanias/everforest-nvim#readme
  "neanias/everforest-nvim",
  name = "everforest",
  opts = {
    show_eob = false,
    on_highlights = function(hl)
      hl.CurrentWord.bold = false
    end,
  },
}
