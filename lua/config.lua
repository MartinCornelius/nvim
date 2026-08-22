local pick = require("mini.pick")
pick.setup({ source = { show = pick.default_show } }) -- Disable icons
vim.keymap.set("n", "<C-p>", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<C-h>", ":Pick help<CR>")

vim.cmd.colorscheme("dracula")
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
