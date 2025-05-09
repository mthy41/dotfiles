-- aliases
local vks = vim.keymap.set
local nrmap = {noremap = true}
local slnt = {silent = true}
local opts = { noremap = true, silent = true }


-- ==================== general ==================
-- save and exit
vks({"n", "i", "v"}, "<C-s>", "<Esc>:w<CR>", slnt, nrmap) -- save
vks("n", "<C-q>", ":q<CR>", slnt, nrmap) -- exit

-- copy and paste external clipboard
vks({"v", "x"}, "<leader>y", [["+y]], slnt, nrmap) -- copy to system clipboard
vks({"v", "x"}, "<leader>p", [["+p]], slnt, nrmap) -- paste from system clipboard (in case Ctrl+Shift+C doesn't work)
-- vks("v", "<C-S-c>", ":q<CR>", {noremap = true})

-- tab motion
vks({"n", "i", "v"}, "<C-1>", "<Esc>1gt<CR>", slnt, nrmap) -- goto tab 1
vks({"n", "i", "v"}, "<C-2>", "<Esc>2gt<CR>", slnt, nrmap) -- goto tab 2
vks({"n", "i", "v"}, "<C-3>", "<Esc>3gt<CR>", slnt, nrmap) -- goto tab 3
vks({"n", "i", "v"}, "<C-4>", "<Esc>4gt<CR>", slnt, nrmap) -- goto tab 4
vks({"n", "i", "v"}, "<C-5>", "<Esc>5gt<CR>", slnt, nrmap) -- goto tab 5
vks({"n", "i", "v"}, "<C-6>", "<Esc>6gt<CR>", slnt, nrmap) -- goto tab 6
vks({"n", "i", "v"}, "<C-7>", "<Esc>7gt<CR>", slnt, nrmap) -- goto tab 7
vks({"n", "i", "v"}, "<C-8>", "<Esc>8gt<CR>", slnt, nrmap) -- goto tab 8
vks({"n", "i", "v"}, "<C-t>", "<Esc>:tabnew<CR>", slnt, nrmap) -- create a tab

-- horizontal motion
vks("n", "zl", "10zl", slnt, nrmap) -- scroll horizontally 5 characters to the right
vks("n", "zh", "10zh", slnt, nrmap) -- scroll horizontally 5 characters to the left

-- outro
vks("n", "<Esc>", ":nohl<CR>", slnt) -- remove search highlights
vks("i", "<C-BS>", "<C-w>") -- back delete text with ctrl backspace
vks("n", "<leader>x", ":ToggleCheckbox<CR>", slnt) -- toggle checkbox
vks("n", "<leader>f", ":lua vim.diagnostic.open_float()<CR>", slnt) -- toggle lsp diagnostics floating window
vks({"n", "v"}, "<leader>C", ":e ~/.config/nvim/.<CR>", opts)

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

-- Telescope
vks({'n', 'v'}, "<leader>ss", ":Telescope<CR>", slnt)
-- others keymaps are set on the telescope.lua config file
