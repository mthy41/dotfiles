return{
	"neovim/nvim-lspconfig",
	config = function()
		require('lspconfig').lua_ls.setup{}
		require('lspconfig').clangd.setup{}
		end,
	lazy = true,
	dependecies = {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim"},
	event = {"BufReadPost", "BufNewFile"},
	cmd = { "LspInfo", "LspInstall", "LspUninstall" }
}
