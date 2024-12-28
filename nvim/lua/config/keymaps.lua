-- aliases
local vks = vim.keymap.set
local nrmap = {noremap = true}
local slnt = {silent = true}


-- save and exit
vks({"n", "i", "v"}, "<C-s>", "<Esc>:w<CR>", slnt, nrmap) -- save
vks("n", "<C-q>", ":q<CR>", slnt, nrmap) -- exit

-- copy and paste external clipboard
vks({"v", "x"}, "<leader>y", [["+y]], slnt, nrmap) -- copy to system clipboard
vks({"v", "x"}, "<leader>p", [["+p]], slnt, nrmap) -- paste from system clipboard
-- vks("v", "<C-S-c>", ":q<CR>", {noremap = true})

-- outro
vks("n", "<Esc>", ":nohl<CR>", slnt) -- remove search highlights
vks("i", "<C-BS>", "<C-w>") -- back delete text with ctrl backspace
vks("n", "<leader>x", ":ToggleCheckbox<CR>", slnt) -- toggle checkbox
