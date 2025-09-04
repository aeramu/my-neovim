return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',         -- required
    'sindrets/diffview.nvim',        -- optional - Diff integration

    -- Only one of these is needed.
    'nvim-telescope/telescope.nvim', -- optional
    -- 'ibhagwan/fzf-lua',              -- optional
    -- 'echasnovski/mini.pick',         -- optional
    -- 'folke/snacks.nvim',             -- optional
  },
  config = function()
    require('neogit').setup{
      kind="replace",
    }

    -- Keymaps (capital G for neogit)
    vim.keymap.set('n', '<leader>gg', ':Neogit<CR>', { desc = 'Open Neogit' })
    vim.keymap.set('n', '<leader>Gc', ':Neogit commit<CR>', { desc = 'Git commit' })
    vim.keymap.set('n', '<leader>Gd', ':Neogit diff<CR>', { desc = 'Git push' })
    vim.keymap.set('n', '<leader>Gp', ':Neogit push<CR>', { desc = 'Git push' })
    vim.keymap.set('n', '<leader>Gl', ':Neogit pull<CR>', { desc = 'Git pull' })
  end,
}
