require("which-key").add({
  { "<leader>y", group = "yazi", icon = "󱞊 ", mode = { "n", "v" } },
})

return {
  -- https://github.com/mikavilpas/yazi.nvim#readme
  "mikavilpas/yazi.nvim",
  event = "VeryLazy",
  keys = {
    { "<leader>yf", "<cmd>Yazi<cr>", desc = "Open yazi at file", mode = { "n", "v" } },
    { "<leader>yr", "<cmd>Yazi cwd<cr>", desc = "Open yazi at root" },
    { "<leader>yy", "<cmd>Yazi toggle<cr>", desc = "Toggle yazi" },
  },
}
