local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
--find a file within git directory (nodemodules kek)
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
--find a string 
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });

end)
