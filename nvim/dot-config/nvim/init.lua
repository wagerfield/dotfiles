if vim.g.vscode then
  vim.keymap.set("n", "<c-u>", "<c-u>zz", { desc = "Move Screen Up" })
  vim.keymap.set("n", "<c-d>", "<c-d>zz", { desc = "Move Screen Down" })
else
  require("config.lazy")
  require("config.commands")
end
