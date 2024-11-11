require'nvim-treesitter.configs'.setup {
	ensure_installed = { "javascript", "php", "lua"},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
