local pick = require "mini.pick"
pick.setup({ source = { show = pick.default_show } }) -- Disable icons

vim.keymap.set("n", "<C-p>", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<C-h>", ":Pick help<CR>")

-- AUTO COMPLETE
require("blink.cmp").setup({
    keymap = { preset = "default" },
    appearance = {
        use_nvim_cmp_as_default = false,
    },
    completion = { 
        documentation = { auto_show = false },
        menu = {
            draw = {
                columns = { { "label", "label_description" }, { "kind" } },
            },
        },
    },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "lua" },
})

-- NERDTREE
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")

-- LSP
require "mason".setup()
vim.lsp.enable({ "lua_ls", "clangd", "jedi_language_server" })

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set('n', 'gr', function() vim.lsp.buf.rename() end, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)

vim.cmd("Copilot enable")

-- COLORSCHEME
-- require "vague".setup({
--     transparent = false,
--     bold = true,
--     italic = false,
-- })
vim.cmd("colorscheme default")
