return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup{
      size = 12,
      open_mapping = [[<leader>tt]],
      direction = 'horizontal', -- 'vertical', 'horizontal', 'tab', 'float'
      close_on_exit = true,
      shell = vim.o.shell,
    }
    vim.keymap.set('n', '<leader>t1', '<cmd>1ToggleTerm<cr>')
    vim.keymap.set('n', '<leader>t2', '<cmd>2ToggleTerm<cr>')
    vim.keymap.set('n', '<leader>t3', '<cmd>3ToggleTerm<cr>')
  end
}
