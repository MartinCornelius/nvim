--vim.opt.guicursor = ""
vim.opt.mouse = a
vim.opt.number = false
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.g.netrw_banner = 0

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false -- highlight search off
vim.opt.incsearch = true -- incremental search (use *)
vim.opt.termguicolors = true
--vim.opt.winborder = "rounded"

vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Ignore case for searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
