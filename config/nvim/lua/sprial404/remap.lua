vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- search remappings to center on the next line found.
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nnnnv')

-- centered cursor half-page jumping
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- visual move highlighted
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- join line below: return cursor
vim.keymap.set('n', 'J', 'mzJ`z')

-- void re-paste
vim.keymap.set('x', '<leader>p', '"_dP')

-- delete to void
vim.keymap.set('n', '<leader>d', '"_d')
vim.keymap.set('v', '<leader>d', '"_d')

-- yank to system clipboard
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
vim.keymap.set('v', '<leader>y', '"+y')

-- quick escape, save and quit
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('i', 'kj', '<Esc>')

vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>Q', ':Q<CR>')
