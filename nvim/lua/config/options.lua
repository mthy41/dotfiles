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
vo.smartcase = true
vo.undofile = true
vo.mouse = 'a' -- enable support for mouse; a is for all modes, i.e. n[ormal] i[nsert] etc.
vo.showmode = false -- hide the mode line (cause there is lualine already)

-- diagnostics
vim.o.updatetime = 500  -- Time in ms before CursorHold is triggered (default is too long)
vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })]]
vim.diagnostic.config({
  virtual_text = false,  -- disables inline messages
  signs = true,          -- keep gutter signs
  underline = true,      -- keep squiggly underlines
  update_in_insert = false,
  severity_sort = true,
})


-- disable netrw (neovim's default directory tree plugin) to futher oil.nvim replacement
vg.loaded_netrw = 1
vg.loaded_netrwPlugin = 1
