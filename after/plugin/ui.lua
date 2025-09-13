require "mini.pick".setup()

vim.opt.winborder = "rounded"

vim.keymap.set("n", "<C-p>", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<C-h>", ":Pick help<CR>")
