require("config.toggle-checkbox")
require("config.options")
require("config.keymaps")
require("config.lazy")

-- this autocmd is bad but it is necessary 
-- to the lazy keymap work for some reason
vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    vim.cmd("source %")
  end,
})
