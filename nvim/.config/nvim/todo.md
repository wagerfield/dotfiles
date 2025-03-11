# Todo

- [ ] Enable spell check within code
- [ ] Review TS LSP setup (LSP symbols and understanding of functions defined with const do not work...try using mason?)
- [ ] Fix up/down arrow keys in grug-far to gk/gj
- [ ] Jump to diagnostics panel when opened
- [ ] Configure fzf
- [ ] Editorconfig
- [ ] Multi-cursor
- [ ] HTTP client
- [ ] DAP debugging
- [ ] Increase what key time
- [ ] Enable syntax highlighting in git diffs (see below)
- [ ] Create oblivion theme

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
