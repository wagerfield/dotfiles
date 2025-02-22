-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<up>", "k", { desc = "Up", remap = true })
vim.keymap.set("n", "<down>", "j", { desc = "Down", remap = true })
vim.keymap.set("n", "<left>", "h", { desc = "Left", remap = true })
vim.keymap.set("n", "<right>", "l", { desc = "Right", remap = true })

-- Move to window using the <ctrl> arrow keys
vim.keymap.set("n", "<c-up>", "<c-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<c-down>", "<c-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<c-left>", "<c-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<c-right>", "<c-w>l", { desc = "Go to Right Window" })

-- Move to window using the <ctrl> arrow keys
vim.keymap.set("t", "<c-up>", "<c-\\><c-n><c-w>k", { desc = "Go to Upper Window", silent = true })
vim.keymap.set("t", "<c-down>", "<c-\\><c-n><c-w>j", { desc = "Go to Lower Window", silent = true })
vim.keymap.set("t", "<c-left>", "<c-\\><c-n><c-w>h", { desc = "Go to Left Window", silent = true })
vim.keymap.set("t", "<c-right>", "<c-\\><c-n><c-w>l", { desc = "Go to Right Window", silent = true })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("t", "<c-k>", "<c-\\><c-n><c-w>k", { desc = "Go to Upper Window", silent = true })
vim.keymap.set("t", "<c-j>", "<c-\\><c-n><c-w>j", { desc = "Go to Lower Window", silent = true })
vim.keymap.set("t", "<c-h>", "<c-\\><c-n><c-w>h", { desc = "Go to Left Window", silent = true })
vim.keymap.set("t", "<c-l>", "<c-\\><c-n><c-w>l", { desc = "Go to Right Window", silent = true })

-- Switch buffers
vim.keymap.set("n", "<s-left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<s-right>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- New TERMINAL buffer
vim.keymap.set("n", "<leader>t", ":terminal<cr>", { desc = "New Terminal Buffer" })

-- Return to NORMAL mode
vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { desc = "Return to NORMAL mode", remap = true, silent = true })
