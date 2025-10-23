--vim.opt.guicursor = "" -- removes slim line when in insert mode
--vim.opt.number = true
--vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = false
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false -- highlight search off
vim.opt.incsearch = true -- incremental search (use *)

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Keybindings
vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>f<CR>", "ggVG=")

vim.g.netrw_banner = 0
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
