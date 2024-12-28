return {
    'stevearc/oil.nvim',
    opts = {},
    -- optional
    dependecies = { "nvim-tree/nvim-webdevicons" },
    config = function()
        require("oil").setup({
            default_file_explorer = true,
            columns = {
               "icon",
               "permissions",
               -- "size",
               -- "mtime",
             },
            buf_options = {
               buflisted = false,
               bufhidden = "hide",
             },
            delete_to_trash = true,
            keymaps = {
                ["<C-q>"] = { "actions.close", mode = "n" },
            },
        })
    end
}
