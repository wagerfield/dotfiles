require("snacks")

local border = require("utils.border")

local backdrop = 60
local easing = "inOutQuad"
local duration = {
  total = 250,
  step = 10,
}
local indent_hl = {
  "SnacksIndent1",
  "SnacksIndent2",
  "SnacksIndent3",
  "SnacksIndent4",
  "SnacksIndent5",
  "SnacksIndent6",
  "SnacksIndent7",
}

local include = {
  ".env",
  ".env.*",
  ".npmrc",
  "notes.*",
  "todo.*",
  "tmp",
}

return {
  -- https://github.com/folke/snacks.nvim#readme
  "folke/snacks.nvim",

  ---@type snacks.Config
  opts = {

    -- https://github.com/folke/snacks.nvim/blob/main/docs/dashboard.md
    dashboard = {
      preset = {
        header = [[
  ██████╗ ██████╗ ██╗     ██╗██╗   ██╗██╗ ██████╗ ███╗   ██╗
 ██╔═══██╗██╔══██╗██║     ██║██║   ██║██║██╔═══██╗████╗  ██║
 ██║   ██║██████╔╝██║     ██║██║   ██║██║██║   ██║██╔██╗ ██║
 ██║   ██║██╔══██╗██║     ██║╚██╗ ██╔╝██║██║   ██║██║╚██╗██║
 ╚██████╔╝██████╔╝███████╗██║ ╚████╔╝ ██║╚██████╔╝██║ ╚████║
  ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝]],
      },
    },

    -- https://github.com/folke/snacks.nvim/blob/main/docs/animate.md
    animate = {
      duration = 200,
      easing = easing,
    },

    -- https://github.com/folke/snacks.nvim/blob/main/docs/indent.md
    indent = {
      animate = {
        enabled = false,
      },
      scope = {
        hl = indent_hl,
      },
      chunk = {
        enabled = false,
        hl = indent_hl,
        char = {
          arrow = "◈", -- ⏵▷▶︎◆◈
        },
      },
    },

    -- https://github.com/folke/snacks.nvim/blob/main/docs/scroll.md
    scroll = {
      animate = {
        easing = easing,
        duration = duration,
      },
      animate_repeat = {
        delay = 100,
        easing = easing,
        duration = duration,
      },
    },

    -- https://github.com/folke/snacks.nvim/blob/main/docs/styles.md
    styles = {
      float = {
        position = "float",
        relative = "editor",
        backdrop = backdrop,
        height = 0.8,
        width = 0.85,
        zindex = 50,
      },
    },

    -- https://github.com/folke/snacks.nvim/blob/main/docs/lazygit.md
    lazygit = {
      configure = true,
      win = {
        style = "float",
      },
    },

    -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md
    picker = {
      prompt = "   ",
      formatters = {
        file = {
          filename_first = true,
          truncate = 80,
        },
      },

      layouts = {
        -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#default
        -- default = {
        --   layout = {
        --     box = "horizontal",
        --     border = "solid",
        --     style = "float",
        --     width = 0.8,
        --     height = 0.8,
        --     {
        --       box = "vertical",
        --       title = "{title} {live} {flags}",
        --       {
        --         win = "input",
        --         border = borders.solid_b,
        --         height = 1,
        --       },
        --       {
        --         win = "list",
        --       },
        --     },
        --     {
        --       win = "preview",
        --       title = "{preview}",
        --       width = 0.6,
        --     },
        --   },
        -- },

        -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#sidebar
        -- sidebar = {
        --   preview = "main",
        --   layout = {
        --     width = 48,
        --     position = "left",
        --     -- border = border.box,
        --     box = "vertical",
        --     wo = {
        --       fillchars = "vert:W",
        --     },
        --     {
        --       win = "input",
        --       border = border.box,
        --       title = "{title} {live} {flags}",
        --       title_pos = "center",
        --       height = 1,
        --     },
        --     {
        --       win = "list",
        --       border = "hpad",
        --     },
        --     {
        --       win = "preview",
        --       title = "{preview}",
        --       border = border.box,
        --       height = 0.4,
        --     },
        --   },
        -- },

        -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#ivy
        -- ivy = {
        --   layout = {
        --     box = "vertical",
        --     backdrop = false,
        --     row = -1,
        --     width = 0,
        --     height = 0.4,
        --     border = borders.thick_t,
        --     title = " {title} {live} {flags}",
        --     title_pos = "left",
        --     {
        --       win = "input",
        --       border = "solid",
        --       height = 1,
        --     },
        --     {
        --       box = "horizontal",
        --       {
        --         win = "list",
        --         border = "none",
        --       },
        --       {
        --         win = "preview",
        --         title = "{preview}",
        --         border = borders.thick_l,
        --         width = 0.6,
        --       },
        --     },
        --   },
        -- },
      },

      -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#-sources
      sources = {

        -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#explorer
        explorer = {
          auto_close = false,
          hidden = true,
          include = include,
          matcher = {
            fuzzy = true,
          },
        },

        -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#files
        files = {
          hidden = true,
          include = include,
        },

        -- https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#lsp_symbols
        lsp_symbols = {
          tree = true,
          filter = {
            typescript = {
              -- "Module",
              -- "Namespace",
              -- "Package",
              "Class",
              "Method",
              "Property",
              "Field",
              "Constructor",
              "Enum",
              "Interface",
              "Function",
              "Variable",
              "Constant",
              -- "String",
              -- "Number",
              -- "Boolean",
              -- "Array",
              -- "Object",
              -- "Key",
              -- "Null",
              -- "EnumMember",
              -- "Struct",
              -- "Event",
              -- "Operator",
              -- "TypeParameter",
            },
          },
        },
      },
    },

    -- https://github.com/folke/snacks.nvim/blob/main/docs/zen.md#default
    zen = {
      toggles = {
        dim = false,
        git_signs = true,
        mini_diff_signs = true,
      },
    },
  },
}
