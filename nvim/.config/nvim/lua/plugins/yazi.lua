return {
  -- https://github.com/mikavilpas/yazi.nvim#readme
  "mikavilpas/yazi.nvim",
  dependencies = { "folke/snacks.nvim", lazy = true },
  event = "VeryLazy",
  keys = {
    { "<leader>yy", "<cmd>Yazi toggle<cr>", desc = "Toggle yazi" },
    { "<leader>yd", "<cmd>Yazi cwd<cr>", desc = "Open yazi in cwd" },
    { "<leader>yf", "<cmd>Yazi<cr>", desc = "Open yazi at file", mode = { "n", "v" } },
  },
}
