vim.o.cmdheight=0

local opt = vim.opt

-- Editing options
opt.relativenumber = false
opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.wrap = false

-- Search options
opt.ignorecase = true
opt.smartcase = true

-- Visual options
opt.cursorline = true
opt.backspace = "indent,eol,start"
opt.termguicolors = false
opt.mousemoveevent=true

-- Clipboard options
opt.clipboard = "unnamedplus"

-- Window and tab management options
opt.splitright = true
opt.splitbelow = true

-- Keyword options
opt.iskeyword:append("-")
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
