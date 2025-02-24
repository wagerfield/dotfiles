-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap arrow keys to HJKL
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
