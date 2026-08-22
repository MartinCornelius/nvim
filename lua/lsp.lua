require("mason").setup({})
-- gra → code actions
-- gri → implementations
-- grn → rename grr → references
-- grt → type definition
-- grx → run codelens
-- gO → document symbols
-- Ctrl-S in Insert mode → signature help
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
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

-- Kubernetes / YAML
vim.lsp.config['yamlls'] = {
  cmd = { 'yaml-language-server', '--stdio' },
  filetypes = { 'yaml' },
  root_markers = { '.git' },

  settings = {
    yaml = {
      schemas = {
        kubernetes = {
          '*.yaml',
          '*.yml',
        },
      },
    },
  },
}
vim.lsp.enable('yamlls')

-- Terraform
vim.lsp.config['terraformls'] = {
  cmd = { 'terraform-ls', 'serve' },
  filetypes = { 'terraform', 'terraform-vars' },
  root_markers = { '.terraform', '.git' },
}
vim.lsp.enable('terraformls')

-- Docker
vim.lsp.config['docker_language_server'] = {
  cmd = { 'docker-language-server', 'start', '--stdio' },
  filetypes = {
    'dockerfile',
  },
  root_markers = {
    'compose.yaml',
    'compose.yml',
    'docker-compose.yaml',
    'docker-compose.yml',
    '.git',
  },
}
vim.lsp.enable('docker_language_server')
