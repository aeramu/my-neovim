return {
  'NickvanDyke/opencode.nvim',
  dependencies = { 'folke/snacks.nvim', },
  opts = {
    terminal = {
      -- No reason to prefer normal mode - can't scroll TUI like a normal buffer
      auto_insert = true,
      win = {
        position = 'left',
        -- I usually want to `toggle` and then immediately `ask` — seems like a sensible default
        enter = true,
      },
      env = {
        -- Other themes have visual bugs in embedded terminals: https://github.com/sst/opencode/issues/445
        OPENCODE_THEME = 'system',
      },
    },
  },
  config = function(_, opts)
    -- Apply opts
    require('opencode').setup(opts)
  end,
  -- Load after UI is ready
  -- event = 'VeryLazy',
  -- stylua: ignore
  keys = {
    { '<leader>ot', function() require('opencode').toggle() end, desc = 'Toggle embedded opencode', },
    { '<leader>oa', function() require('opencode').ask() end, desc = 'Ask opencode', mode = 'n', },
    { '<leader>oa', function() require('opencode').ask('@selection: ') end, desc = 'Ask opencode about selection', mode = 'v', },
    { '<leader>op', function() require('opencode').select_prompt() end, desc = 'Select prompt', mode = { 'n', 'v', }, },
    { '<leader>on', function() require('opencode').command('session_new') end, desc = 'New session', },
    { '<leader>oy', function() require('opencode').command('messages_copy') end, desc = 'Copy last message', },
    { '<C-u>',    function() require('opencode').command('messages_half_page_up') end, desc = 'Scroll messages up', mode = 't'},
    { '<C-d>',    function() require('opencode').command('messages_half_page_down') end, desc = 'Scroll messages down', mode = 't'},
  },
}
