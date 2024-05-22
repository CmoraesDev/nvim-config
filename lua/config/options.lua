vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- base options
vim.opt.mouse = "a"
vim.opt.undofile = true
vim.opt.updatetime = 200
-- vim.opt.timeoutlen = 500
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.clipboard = "unnamedplus"

-- ui options
vim.opt.showmode = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 10
vim.opt.wrap = false

-- search
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.hlsearch = false

-- tabs & indent
local TAB = 2
vim.opt.expandtab = true
vim.opt.tabstop = TAB
vim.opt.softtabstop = TAB
vim.opt.shiftwidth = TAB
vim.opt.autoindent = true
vim.opt.breakindent = true
