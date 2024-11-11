local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<Space><Space>', builtin.git_files, {})
vim.keymap.set('n', '<Space>fg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
