
-- aggressive auto read
-- Auto-check for file changes
vim.opt.autoread = true         -- Automatically reload files changed outside of Neovim
vim.api.nvim_create_autocmd({"FocusGained", "BufEnter", "CursorHold"}, {
  callback = function()
    vim.cmd("checktime")
  end,
})

-- Auto toggle opencode on startup
vim.schedule(function()
  local prev_buf = vim.api.nvim_get_current_buf()
  require('opencode').toggle()
  -- Go back to previous buffer after toggle
  vim.schedule(function()
    vim.api.nvim_set_current_buf(prev_buf)
  end)
end)
