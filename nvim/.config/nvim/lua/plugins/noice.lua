local border = require("utils.border")

return {
  -- https://github.com/folke/noice.nvim#readme
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- https://github.com/folke/noice.nvim/lua/noice/config/views.lua
    views = {
      -- mini
      -- cmdline
      -- cmdline_output
      -- hover
      confirm = {
        border = {
          style = border.box,
          -- padding = { 0, 1 },
        },
      },
      cmdline_popup = {
        border = {
          style = border.box,
          -- padding = { 0, 1 },
        },
      },
      messages = {
        border = {
          style = border.box,
          -- padding = { 0, 1 },
        },
      },
      notify = {
        border = {
          style = border.box,
          -- padding = { 0, 1 },
        },
      },
      popup = {
        border = {
          style = border.box,
          -- padding = { 0, 1 },
        },
      },
      popupmenu = {
        border = {
          style = border.box,
          -- padding = { 0, 1 },
        },
      },
      split = {
        border = {
          style = border.box,
          -- padding = { 0, 1 },
        },
      },
      vsplit = {
        border = {
          style = border.box,
          -- padding = { 0, 1 },
        },
      },
    },
  },
}
