vim.opt.guicursor = ''

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = 'yes'

vim.opt.list = true
vim.opt.listchars = 'tab:»_,trail:·'

vim.opt.encoding = 'utf-8'

-- make literal '@' an acceptable filename
vim.opt.isfname:append('@-@')

-- give more space for displaying messages
vim.opt.cmdheight = 1

-- reduce updatetime make programmer happy :D
vim.opt.updatetime = 50

-- avoid |ins-completion-menu| messages
vim.opt.shortmess:append('c')

-- highlight vertical line for line-width guidelines
vim.opt.colorcolumn = '80'

vim.g.mapleader = ','

-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 25
