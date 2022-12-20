-- Set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- General keymaps
keymap.set("n", "<S-Up>", ":m -2<CR>")
keymap.set("n", "<S-Down>", ":m +1<CR>")
keymap.set("n", "<S-A-Down>", ":t.<CR>")
keymap.set("n", "<C-s>", ":w<CR>")

-- Nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
