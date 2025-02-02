-- Packer is no longer maintained
-- Only kept just in case

-- Only required if you have packer configured as `opt`
-- Frankly I'm unsure if packer is configured as `opt` :P
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
		         require("rose-pine").setup()
		         vim.cmd('colorscheme rose-pine')
		end
	})

	use(
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	)
	use('nvim-treesitter/playground')

	use('theprimeagen/harpoon')
end)
