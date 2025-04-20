local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

    -- Ctrl+o jumps back to where you came from
	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    -- Opens vertical split for the definition
    vim.keymap.set("n", "gD", function() 
        vim.cmd("vsplit")
        vim.lsp.buf.definition()
    end, opts)

    vim.keymap.set('n', 'gr', function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true
})
