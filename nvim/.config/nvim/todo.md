# Todo

- [ ] Enable hidden files in explorer and find windows excluding node_modules
- [ ] Enable spell check within code
- [ ] Review TS LSP setup (LSP symbols and understanding of functions defined with const do not work...try using mason?)
- [x] Setup ESLint to formatter / DAP
- [x] Disable UI conceal by default
- [x] Disable dimming in Zen Mode by default
- [ ] Fix up/down arrow keys in grug-far to gk/gj
- [ ] Jump to diagnostics panel when opened
- [x] Show full file path or increase [depth of picker](https://github.com/folke/snacks.nvim/blob/main/docs/picker.md)
- [ ] Editorconfig
- [ ] Code folding?
- [ ] Multi-cursor
- [ ] HTTP client
- [ ] DAP debugging
- [ ] Increase what key time
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
