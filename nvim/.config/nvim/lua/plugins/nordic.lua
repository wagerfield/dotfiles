local palette = {
  black = {
    "#191D24",
    "#1E222A",
    "#222630",
    "#242933", -- base
  },
  -- Nord Polar Night
  gray = {
    "#2E3440",
    "#3B4252",
    "#434C5E",
    "#4C566A",
  },
  white = {
    "#BBC3D4", -- text
    -- Nord Snow Storm
    "#D8DEE9",
    "#E5E9F0",
    "#ECEFF4",
  },
  red = {
    "#B74E58",
    "#BF616A",
    "#C5727A",
  },
  orange = {
    "#CB775D",
    "#D08770",
    "#D79784",
  },
  yellow = {
    "#E7C173",
    "#EBCB8B",
    "#EFD49F",
  },
  green = {
    "#97B67C",
    "#A3BE8C",
    "#B1C89D",
  },
  cyan = {
    "#80B3B2",
    "#8FBCBB",
    "#9FC6C5",
  },
  blue = {
    "#5E81AC",
    "#81A1C1",
    "#88C0D0",
  },
  magenta = {
    "#A97EA1",
    "#B48EAD",
    "#BE9DB8",
  },
}

return {
  -- https://github.com/AlexvZyl/nordic.nvim#readme
  "AlexvZyl/nordic.nvim",
  name = "nordic",
  opts = {
    cursorline = {
      theme = "light",
      blend = 0.5,
    },
    on_highlight = function(H, P)
      H.YankyYanked = { link = "IncSearch" }
      H.YankyPut = { link = "IncSearch" }

      H.FloatTitle.bg = P.bg_float

      H.IndentBlanklineChar = { fg = P.orange.base }
      H.IndentBlanklineContextChar = { fg = P.yellow.base }
    end,
  },
}
