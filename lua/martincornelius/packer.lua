vim.cmd [[ packadd packer.nvim ]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = {{ 'nvim-lua/plenary.nvim' }}
	}
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	})

	use('tpope/vim-fugitive')
    use('tpope/vim-commentary')
    use('townk/vim-autoclose')

	use {
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{"neovim/nvim-lspconfig"},
			{"williamboman/mason.nvim"},
			{"williamboman/mason-lspconfig.nvim"},

			-- Autocompletion
			{"hrsh7th/nvim-cmp"},
			{"hrsh7th/cmp-buffer"},
			{"hrsh7th/cmp-path"},
			{"saadparwaiz1/cmp_luasnip"},
			{"hrsh7th/cmp-nvim-lsp"},
			{"hrsh7th/cmp-nvim-lua"},

			  -- Snippets
			  {"L3MON4D3/LuaSnip"},
			  {"rafamadriz/friendly-snippets"},
		  }
	  }

	use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use ('folke/tokyonight.nvim')
    use ('sainnhe/everforest')
end)
