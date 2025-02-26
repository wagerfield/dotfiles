# Todo

- [ ] Enable hidden files in explorer and find windows excluding node_modules
- [x] Setup ESLint to formatter / DAP
- [x] Disable UI conceal by default
- [ ] Disable dimming in Zen Mode by default
- [ ] Fix up/down arrow keys in grug-far to gk/gj
- [ ] Jump to diagnostics panel when opened
- [ ] Show full file path or increase [depth of picker](https://github.com/folke/snacks.nvim/blob/main/docs/picker.md)
- [ ] Editorconfig
- [ ] Multi-cursor
- [ ] HTTP client
- [ ] DAP debugging
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
