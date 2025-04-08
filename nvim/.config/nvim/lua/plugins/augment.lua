require("which-key").add({
  { "<leader>a", group = "augment", icon = "󰚩 ", mode = { "n", "v" } },
})

return {
  -- https://github.com/augmentcode/augment.vim#readme
  "augmentcode/augment.vim",
  lazy = false,
  keys = {
    { "<leader>ac", "<cmd>Augment chat<cr>", desc = "Augment Chat", mode = { "n", "v" } },
    { "<leader>an", "<cmd>Augment chat-new<cr>", desc = "New Augment Chat", mode = { "n", "v" } },
    { "<leader>aa", "<cmd>Augment chat-toggle<cr>", desc = "Toggle Augment Chat" },
    { "<leader>ad", "<cmd>Augment disable<cr>", desc = "Disable Augment" },
    { "<leader>ae", "<cmd>Augment enable<cr>", desc = "Enable Augment" },
    { "<leader>as", "<cmd>Augment status<cr>", desc = "Augment Status" },
    { "<leader>al", "<cmd>Augment log<cr>", desc = "Augment Log" },
  },
}
