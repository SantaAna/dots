-- global settings and options
vim.g.mapleader = ' '
vim.o.relativenumber = true
vim.o.number = true
vim.o.scrolloff = 20

--fold
vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Tab settings
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.swapfile = false

-- Load plugins
require("mason").setup()
require("mason-lspconfig").setup()
require('plugins')

-- Key mappings
local keymap = vim.api.nvim_set_keymap
local nore = { noremap = true }

-- VIM mappings
keymap('i', '<C-e>', '<ESC>', nore)
keymap('i', 'jj', '<ESC>', nore)
keymap('n', '<C-l>', '<C-w>l', nore)
keymap('n', '<C-h>', '<C-w>h', nore)
keymap('n', '<C-q>', '<C-w>q', nore)
keymap('n', '<C-d>', '<C-d>zz', nore)
keymap('n', '<C-u>', '<C-u>zz', nore)

-- Plugin mappings
-- Barbar
keymap('n', '<leader>bp', '<cmd>BufferPick<cr>', nore)
keymap('n', '<leader>bx', '<cmd>BufferDelete<cr>', nore)
keymap('n', '<Tab>', '<cmd>BufferNext<cr>', nore)
keymap('n', '<S-Tab>', '<cmd>BufferPrevious<cr>', nore)
-- NerdTree
keymap('n', '<leader>t', '<cmd>NERDTreeToggle<cr>', nore)
-- Oil
keymap('n', '-', '<cmd>Oil<cr>', nore)
