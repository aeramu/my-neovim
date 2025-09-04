return {
  -- Smooth scrolling plugin
  {
    'karb94/neoscroll.nvim',
    event = 'WinScrolled',
    config = function()
      require('neoscroll').setup()
    end
  },
}
