return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup {
			options = {
				theme = 'auto',
			},
			tabline = {
				lualine_a = {'mode'},  -- Put mode in top-left
				lualine_b = {'buffers'},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {}
			}
		}
	end
}
