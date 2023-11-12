-- Leader
vim.g.mapleader = " "

-- Tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Colors
vim.opt.termguicolors = true

-- UI
vim.opt.signcolumn = "yes"

-- Disable "inline" diagnostic messages.
vim.diagnostic.config({ virtual_text = false })
