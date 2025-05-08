-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Escape insert mode", silent = true })

map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save File", silent = true })

map("n", "bh", "^", { desc = "Move to the beginning of the line" })
map("n", "el", "$", { desc = "Move to the end of the line" })

-- map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half a screen and center the cursor" })
-- map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half a screen and center the cursor" })

map("n", "eb", "viw", { desc = "Select inner word" })
map("n", "EB", "viW", { desc = "Select inner WORD" })
