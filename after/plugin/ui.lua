require "mini.pick".setup()

vim.opt.winborder = "rounded"

-- Ignore case for searching in mini.pick files
vim.o.ignorecase = true
vim.o.smartcase = true

vim.keymap.set("n", "<C-p>", ":Pick files<CR>")
vim.keymap.set("n", "<leader>fg", ":Pick grep_live<CR>")
vim.keymap.set("n", "<C-h>", ":Pick help<CR>")
