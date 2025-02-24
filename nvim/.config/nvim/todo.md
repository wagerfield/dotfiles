# Todo

- [ ] Enable hidden files in explorer and find windows excluding node_modules
- [x] Setup ESLint to formatter / DAP
- [x] Disable UI conceal by default
- [ ] Jump to diagnostics panel when opened
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
