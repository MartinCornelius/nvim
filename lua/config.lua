local pick = require("mini.pick")
pick.setup({ source = { show = pick.default_show } }) -- Disable icons
vim.keymap.set("n", "<C-p>", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<C-h>", ":Pick help<CR>")

require("vague").setup({
    transparent = true,
    bold = true,
    italic = false,
})
vim.cmd("colorscheme vague")
