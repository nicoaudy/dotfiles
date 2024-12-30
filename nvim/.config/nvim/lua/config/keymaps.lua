-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-a>", "gg<S-v>G") -- Select all
vim.keymap.set("n", "ss", ":split<Return><C-w>w") -- Split window horizontally
vim.keymap.set("n", "sv", ":vsplit<Return><C-w>w") -- Split window vertically
vim.keymap.set("n", "x", '"_x') -- Do not yank with x

-- Move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "p", '"_dP')
vim.keymap.set("v", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("v", "K", ":move '<-2<CR>gv-gv")

-- Move text up and down in normal mode
vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi")
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi")

-- Move text up and down in visual mode
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv")

-- Fix for vim-tmux-navigator conflicts
vim.keymap.del("n", "<c-h>")
vim.keymap.del("n", "<c-j>")
vim.keymap.del("n", "<c-k>")
vim.keymap.del("n", "<c-l>")
vim.keymap.set("n", "<c-h>", "<cmd>:TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<c-j>", "<cmd>:TmuxNavigateDown<cr>")
vim.keymap.set("n", "<c-k>", "<cmd>:TmuxNavigateUp<cr>")
vim.keymap.set("n", "<c-l>", "<cmd>:TmuxNavigateRight<cr>")
vim.keymap.set("n", "<c-\\>", "<cmd>:TmuxNavigatePrevious<cr>")
