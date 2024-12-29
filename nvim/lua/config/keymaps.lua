-- aliases
local vks = vim.keymap.set
local nrmap = {noremap = true}
local slnt = {silent = true}


-- ==================== general ==================
-- save and exit
vks({"n", "i", "v"}, "<C-s>", "<Esc>:w<CR>", slnt, nrmap) -- save
vks("n", "<C-q>", ":q<CR>", slnt, nrmap) -- exit

-- copy and paste external clipboard
vks({"v", "x"}, "<leader>y", [["+y]], slnt, nrmap) -- copy to system clipboard
vks({"v", "x"}, "<leader>p", [["+p]], slnt, nrmap) -- paste from system clipboard (in case Ctrl+Shift+C doesn't work)
-- vks("v", "<C-S-c>", ":q<CR>", {noremap = true})

-- outro
vks("n", "<Esc>", ":nohl<CR>", slnt) -- remove search highlights
vks("i", "<C-BS>", "<C-w>") -- back delete text with ctrl backspace
vks("n", "<leader>x", ":ToggleCheckbox<CR>", slnt) -- toggle checkbox

-- ================ plugin related ===============

-- Lazy
vks("n", "<leader>ll", "<Esc>:Lazy<CR>", slnt)
-- for some reason the l key doesn't work if :source command
-- is not triggered so must be ll instead

-- Neogit
vks({"n", "v"}, "<leader>g", ":<Esc>:Neogit<CR>", slnt) -- open Neogit tab

-- Neotree
vks({"n", "v"}, "<leader>t", ":NvimTreeToggle<CR>", slnt)

-- Oil
vks({"n", "v"}, "<leader>o", ":Oil<CR>", slnt)
