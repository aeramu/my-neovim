-- indentation
vim.opt.tabstop = 2       -- Number of spaces a tab counts for
vim.opt.shiftwidth = 2    -- Number of spaces for each indentation level
vim.opt.softtabstop = 2   -- Number of spaces a tab counts for while editing
vim.opt.expandtab = true  -- Convert tabs to spaces
vim.opt.smartindent = true -- Smart autoindenting for new lines
vim.opt.autoindent = true  -- Copy indent from current line when starting new line

-- scroll
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes:1"  -- Always show sign column (for git signs, etc.)
vim.opt.scrolloff = 20          -- Keep 20 lines visible above/below cursor
vim.opt.mouse = 'a'             -- Enable mouse support in all modes

-- split
vim.o.splitbelow = true  -- Horizontal splits open below
vim.o.splitright = true  -- Vertical splits open to the right

-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_localrmdir = 'trash'  -- macOS/Linux with trash command

-- Change to directory of current file
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Check if we opened a directory
    local arg = vim.fn.argv(0)  -- First argument passed to nvim
    if arg and vim.fn.isdirectory(arg) == 1 then
      vim.cmd("lcd " .. vim.fn.fnamemodify(arg, ":p"))
    elseif vim.fn.expand("%") ~= "" then
      -- Fallback for when opening a file
      vim.cmd("silent! cd %:p:h")
    end
  end,
})

require("config.remap")
require("config.lazy")
require("config.opencode")


