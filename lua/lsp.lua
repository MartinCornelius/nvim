require("mason").setup({})
-- gra → code actions
-- gri → implementations
-- grn → rename
-- grr → references
-- grt → type definition
-- grx → run codelens
-- gO → document symbols
-- Ctrl-S in Insert mode → signature help

-- Python
vim.lsp.config['jedi-language-server'] = {
    cmd = { 'jedi-language-server' },
    filetypes = { 'python' },
    root_markers = { '.git' },
}
vim.lsp.enable('jedi-language-server')

-- C++
vim.lsp.config['clangd'] = {
    cmd = { 'clangd' },
    filetypes = { 'cpp' },
    root_markers = { '.git' },
}
vim.lsp.enable('clangd')

