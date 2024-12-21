return{
	"hrsh7th/nvim-cmp",
	lazy = false,
	event = "InsertEnter",
	dependencies = {
   	    "hrsh7th/cmp-nvim-lsp",
   	    "hrsh7th/cmp-buffer",
	    "hrsh7th/cmp-path",
	    "neovim/nvim-lspconfig"
   	},
	config = function()
		require('cmp').setup()
	end,
}
