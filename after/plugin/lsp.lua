local lsp = require('lsp-zero')

require("mason").setup({})
require("mason-lspconfig").setup({
  handlers = {
    lsp.default_setup,
  },
})

lsp.on_attach(function(_, bufnr)
	local opts = { buffer = bufnr }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', 'gr', function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
end)

vim.diagnostic.config({
	virtual_text = true
})

