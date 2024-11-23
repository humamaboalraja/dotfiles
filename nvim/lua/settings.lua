local opt = vim.opt
local g = vim.g

------------------------ options -----------------------------
opt.laststatus = 3 -- global statusline
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.cursorline = true

g.mapleader = " "
g.maplocalleader = ","
-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Numbers
vim.g.indent_blankline_enabled = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.signcolumn = "number"
vim.wo.wrap = false
vim.wo.linebreak = false
opt.numberwidth = 2
opt.colorcolumn = "80"
opt.ruler = false

opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

opt.updatetime = 250

opt.whichwrap:append "<>[]hl"

g.icons_enabled = false
