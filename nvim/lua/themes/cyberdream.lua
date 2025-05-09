return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
	config = function()
		vim.cmd([[colorscheme cyberdream]])
        require("cyberdream").setup({
            variant = "default",
            -- saturation = 1,
            italic_comments = true,
            transparent = true,
            cache = true,
        })
	end,
}
