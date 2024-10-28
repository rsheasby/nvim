require("config.lazy")

vim.o.number = true

vim.keymap.set('', '-', '$')
vim.keymap.set('', ';', ':')

vim.keymap.set('v', '<A-j>', 'gj')
vim.keymap.set('v', '<A-k>', 'gk')
vim.keymap.set('n', '<A-j>', 'gj')
vim.keymap.set('n', '<A-k>', 'gk')

vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+yg_')

vim.keymap.set({'n', 'v'}, '<leader>d', '"+d')
vim.keymap.set('n', '<leader>D', '"+D')

vim.keymap.set({'n', 'v'}, '<leader>p', '"+p')
vim.keymap.set({'n', 'v'}, '<leader>P', '"+P')

vim.keymap.set('', '<D-v>', '<C-r>*')

vim.keymap.set('n', '<', '<<')
vim.keymap.set('n', '>', '>>')
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

vim.keymap.set('v', '<C-/>', 'gcgv')
vim.keymap.set('n', '<C-/>', 'gcc')

vim.keymap.set('n', '<C-k>', '<C-u>zz')
vim.keymap.set('n', '<C-j>', '<C-d>zz')

vim.keymap.set('n', '<C-h>', '<Cmd>BufferPrevious<CR>')
vim.keymap.set('n', '<C-l>', '<Cmd>BufferNext<CR>')
vim.keymap.set('n', '<C-d>', '<Cmd>BufferClose<CR>')

vim.keymap.set('n', '<ESC>', ':noh<CR><ESC>', {silent=true})

vim.keymap.set('n', '<C-p>', '<Cmd>Neotree<CR>')

vim.api.nvim_create_autocmd("FileType", {
    pattern = "neo-tree",
    callback = function(args)
	vim.keymap.set('n', '<C-p>', '<C-w><C-w>', {buffer = args.buf})
    end
})
