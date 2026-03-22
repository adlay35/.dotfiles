-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = ' '       -- 스페이스바를 글로벌 leader 키로 설정
vim.g.maplocalleader = ' '  -- 스페이스바를 로컬 버퍼 leader 키로 설정

vim.keymap.set("i", "<C-c>", "<Esc>")
