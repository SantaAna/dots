-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.api.nvim_set_keymap
local nore = { noremap = true }
keymap("i", "<C-e>", "<ESC>", nore)
keymap("i", "jj", "<ESC>", nore)
-- Vim projectionist.
-- Setting the maps in the plugin causes the plugin to lazy
-- load and break.
keymap("n", "<leader>a", "<cmd>A<cr>", nore)
keymap("n", "<leader>av", "<cmd>AV<cr>", nore)
keymap("n", "<leader>as", "<cmd>AS<cr>", nore)
keymap("n", "<leader>gv", "<cmd>Git<cr>", nore)
keymap("n", "<leader>gd", "<cmd>Gdiffsplit<cr>", nore)
