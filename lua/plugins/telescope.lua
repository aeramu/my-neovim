return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local telescope = require('telescope')

		telescope.setup{
			defaults = {
				find_command = { 'rg', '--files', '--hidden', '--glob', '!.git/*' },
			}
		}

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
		
		-- Git shortkeys
		vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'Git commits' })
		vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Git branches' })
		vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Git status' })
		vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Git files' })
		vim.keymap.set('n', '<leader>gS', builtin.git_stash, { desc = 'Git stash' })
		
		-- LSP shortcuts
    vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = 'LSP references' })
		vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = 'LSP definitions' })
		vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = 'LSP implementations' })
		vim.keymap.set('n', 'go', builtin.lsp_type_definitions, { desc = 'LSP type definitions' })
		vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, { desc = 'Document symbols' })
		vim.keymap.set('n', '<leader>ws', builtin.lsp_workspace_symbols, { desc = 'Workspace symbols' })
		vim.keymap.set('n', '<leader>ci', builtin.lsp_incoming_calls, { desc = 'Incoming calls' })
		vim.keymap.set('n', '<leader>co', builtin.lsp_outgoing_calls, { desc = 'Outgoing calls' })
	end,   
}
