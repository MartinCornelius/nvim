require("mason").setup({})
-- gra → code actions
-- gri → implementations
-- grn → rename
-- grr → references
-- grt → type definition
-- grx → run codelens
-- gO → document symbols
-- Ctrl-S in Insert mode → signature help
--
-- Diagnostics:
-- <C-w>d: Opens the diagnostic message
-- ]d: Jumps to the next diagnostic.
-- [d: Jumps to the previous diagnostic.
-- ]D / [D: Jumps to the last / first diagnostic in the buffer.

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

-- Latex
vim.lsp.config["texlab"] = {
    cmd = { "texlab" },
    filetypes = {"tex"},
    root_markers = {".git"},
}
vim.lsp.enable("texlab")
