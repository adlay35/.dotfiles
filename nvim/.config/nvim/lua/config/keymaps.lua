-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = ' '

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set('n', '<A-w>', '<C-w>w', { desc = 'Go to next window' })
vim.keymap.set('n', '<A-S-w>', '<C-w>W', { desc = 'Go to previous window' })
