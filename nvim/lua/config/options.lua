    local vo = vim.opt
local vg = vim.g

-- map leader
vg.mapleader = " "
vg.maplocalleader = "\\"

-- navigations and number column
vo.number = true
vo.relativenumber = true -- not for now
vo.numberwidth = 2
vo.signcolumn = "yes"
vo.wrap = false
vo.scrolloff = 10
vo.sidescrolloff = 5

-- tab identing
vo.expandtab = true
vo.shiftwidth = 4
vo.tabstop = 4
-- vo.softtabstop = 4

vo.autoindent = true
vo.smartindent = true
vo.breakindent = true

-- others
vo.ignorecase = true

-- disable netrw (neovim's default directory tree plugin) to futher oil.nvim replacement
vg.loaded_netrw = 1
vg.loaded_netrwPlugin = 1
