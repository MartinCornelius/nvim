require "mini.pick".setup()
vim.keymap.set("n", "<C-p>", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<C-h>", ":Pick help<CR>")

-- AUTO COMPLETE
require("blink.cmp").setup({
    keymap = { preset = "default" },
    appearance = {
        use_nvim_cmp_as_default = false,
    },
    completion = { documentation = { auto_show = false } },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "lua" },
})

-- LSP
require "mason".setup()
vim.lsp.enable({ "lua_ls", "clangd", "jedi_language_server" })

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set('n', 'gr', function() vim.lsp.buf.rename() end, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)

-- COLORSCHEME
require "vague".setup({
    italic = false,
})
vim.cmd("colorscheme vague")
