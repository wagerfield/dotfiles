-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

vim.api.nvim_create_autocmd("BufDelete", {
  callback = function()
    -- local buffer_num = vim.api.nvim_get_current_buf()
    -- local buffer_name = vim.api.nvim_buf_get_name(buffer_num)
    -- local buffer_type = vim.bo[buffer_num].filetype
    -- local buffer_empty = buffer_name == "" and buffer_type == ""
    --
    -- require("noice").notify(
    --   vim.inspect({
    --     buffer_num = buffer_num,
    --     buffer_name = buffer_name,
    --     buffer_type = buffer_type,
    --     buffer_empty = buffer_empty,
    --   }),
    --   "info"
    -- )
    --
    -- if buffer_empty then
    --   -- Snacks.dashboard.open()
    -- end
  end,
})

-- vim.api.nvim_create_autocmd({ "WinNew", "WinClosed" }, {
--   pattern = "",
--   callback = function()
--     local windows = vim.api.nvim_list_wins()
--
--     for _, win in ipairs(windows) do
--       local buf = vim.api.nvim_win_get_buf(win)
--       local name = vim.api.nvim_buf_get_name(buf)
--       -- print("Window buffer name:", name) -- This will show us the actual names
--       -- local win_config = vim.api.nvim_win_get_config(win)
--       -- if win_config.relative == "" then
--       --   local win_border = win_config.border or "none"
--       --   local win_fillchars = vim.wo[win].fillchars or "default"
--       --   -- require("noice").notify(
--       --   --   string.format(
--       --   --     "Window %d:\nBorder: %s\nFillchars: %s",
--       --   --     win,
--       --   --     vim.inspect(win_border),
--       --   --     vim.inspect(win_fillchars)
--       --   --   ),
--       --   --   "info"
--       --   -- )
--       -- end
--     end
--   end,
-- })
--
-- vim.api.nvim_create_autocmd("WinEnter", {
--   callback = function()
--     local win = vim.api.nvim_get_current_win()
--     local fillchars = vim.wo[win].fillchars or "default"
--     require("noice").notify(string.format("Window fillchars: %s", vim.inspect(fillchars)), "info")
--   end,
-- })
