# Todo

- [ ] Configure fzf
- [ ] Remove snacks borders (explorer, picker etc.)
- [ ] Refine Document Symbols UI to not include comments and filter symbols by type or depth
- [ ] Refine UI (ref Everforest powerline, tabs, etc.)
- [ ] Setup AI plugin like avante
- [ ] Multi-cursor
- [ ] HTTP client
- [ ] DAP debugging
- [ ] Fix up/down arrow keys in grug-far to gk/gj
- [ ] Enable syntax highlighting in git diffs (see below)

```lua
return {
  "lewis6991/gitsigns.nvim",
  opts = {
    diff_opts = {
      internal = true,
      algorithm = "patience",
      indent_heuristic = true,
      linematch = true, -- enables syntax highlighting in diff view
    },
  },
}
```

## Themes

- [ ] [Catppuccin](https://github.com/catppuccin/nvim)
- [ ] [Katsushika](https://github.com/rebelot/kanagawa.nvim)
- [ ] [Tokyo Night](https://github.com/folke/tokyonight.nvim)
- [ ] [Everforest](https://github.com/sainnhe/everforest)
- [ ] [Nordic](https://github.com/AlexvZyl/nordic.nvim)
  - [x] lualine
  - [ ] yazi
