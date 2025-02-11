vim.opt.shell = "powershell.exe"

local betterTerm = require("betterTerm")
vim.keymap.set({"n", "t"}, "<C-.>", betterTerm.open, { desc = "Open terminal"})

betterTerm.setup {
    prefix = "Term_",
    startInserted = true,
    position = "bot",
    size = 18
}
