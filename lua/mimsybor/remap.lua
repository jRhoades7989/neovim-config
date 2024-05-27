vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>o', 'i<Cr><Esc>O', {desc = '[O]pen enclosure'})

vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("i", "lkj", "<Esc>:w<Cr>")
vim.keymap.set("i", ";lkj", "<Esc>:wq<Cr>")


