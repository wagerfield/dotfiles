-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local smart_splits = require("smart-splits")

-- Move screen up and down
vim.keymap.set("n", "<c-u>", "<c-u>zz", { desc = "Move Screen Up" })
vim.keymap.set("n", "<c-d>", "<c-d>zz", { desc = "Move Screen Down" })

-- Remap left and right arrow keys
vim.keymap.set("n", "<left>", "h", { desc = "Left", remap = true })
vim.keymap.set("n", "<right>", "l", { desc = "Right", remap = true })

-- Move between windows with smart-splits
vim.keymap.set({ "n", "v", "i", "t" }, "<c-k>", smart_splits.move_cursor_up)
vim.keymap.set({ "n", "v", "i", "t" }, "<c-j>", smart_splits.move_cursor_down)
vim.keymap.set({ "n", "v", "i", "t" }, "<c-h>", smart_splits.move_cursor_left)
vim.keymap.set({ "n", "v", "i", "t" }, "<c-l>", smart_splits.move_cursor_right)
vim.keymap.set({ "n", "v", "i", "t" }, "<c-up>", smart_splits.move_cursor_up)
vim.keymap.set({ "n", "v", "i", "t" }, "<c-down>", smart_splits.move_cursor_down)
vim.keymap.set({ "n", "v", "i", "t" }, "<c-left>", smart_splits.move_cursor_left)
vim.keymap.set({ "n", "v", "i", "t" }, "<c-right>", smart_splits.move_cursor_right)

-- Move lines up
vim.keymap.set("n", "<a-up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
vim.keymap.set("v", "<a-up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
vim.keymap.set("i", "<a-up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })

-- Move lines down
vim.keymap.set("n", "<a-down>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
vim.keymap.set("v", "<a-down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("i", "<a-down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })

-- Switch buffers
vim.keymap.set("n", "<s-left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<s-right>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- New terminal buffer
vim.keymap.set("n", "<leader>t", ":terminal<cr>", { desc = "New Terminal Buffer" })

-- Exit terminal mode
vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { desc = "Exit Terminal Mode", remap = true, silent = true })

-- Clear terminal
vim.keymap.set("t", "<d-k>", function()
  vim.api.nvim_chan_send(vim.b.terminal_job_id, "\x0c")
end, { desc = "Clear Terminal" })

-- Paste from yank register
vim.keymap.set("n", "<leader>p", '"0p', { desc = "Paste Yank After" })
vim.keymap.set("n", "<leader>P", '"0P', { desc = "Paste Yank Before" })
