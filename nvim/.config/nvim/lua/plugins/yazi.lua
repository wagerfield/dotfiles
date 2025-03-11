return {
  "mikavilpas/yazi.nvim",
  dependencies = { "folke/snacks.nvim", lazy = true },
  event = "VeryLazy",
  keys = {
    {
      "<leader>yy",
      "<cmd>Yazi<cr>",
      mode = { "n", "v" },
      desc = "Open yazi at file",
    },
    {
      "<leader>yr",
      "<cmd>Yazi cwd<cr>",
      desc = "Open yazi in cwd",
    },
    {
      "<leader>yt",
      "<cmd>Yazi toggle<cr>",
      desc = "Toggle yazi",
    },
  },
}
