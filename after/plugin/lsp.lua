local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'lua_ls',
	'intelephense',
	'ts_ls',
	'eslint',
	'pyright',
})

lsp.configure('lua-language-server', {
	settings = {
		Lua = {
			diagnostic = {
				globals = { 'vim' }
			}
		}
	}
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true
})