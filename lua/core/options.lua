-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- General options
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- File handling
vim.opt.swapfile = false

-- Line numbers
vim.opt.number = true

-- Clipboard
vim.opt.clipboard:append("unnamedplus")

-- Reduce flickering and improve performance
vim.opt.lazyredraw = true
vim.opt.ttyfast = true
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500

-- Smooth resizing and redrawing
vim.opt.redrawtime = 10000
vim.opt.synmaxcol = 200

-- More aggressive performance settings
vim.opt.regexpengine = 1
vim.opt.scrolljump = 5
vim.opt.ttimeoutlen = 10
vim.opt.sidescrolloff = 15

-- Disable some features that can cause flickering
vim.cmd([[
  set nocursorcolumn
  set norelativenumber
  set noshowmatch
]])

-- Optimize for terminal
if vim.env.TERM == "screen-256color" or vim.env.TERM == "tmux-256color" then
  vim.opt.ttimeoutlen = 10
end
