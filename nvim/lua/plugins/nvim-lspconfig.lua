return{
	"neovim/nvim-lspconfig",
	config = function()
        local lspc = require('lspconfig')
        local util = require("lspconfig/util")
		lspc.lua_ls.setup{
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {"vim"},
                    },
                    workspace = {
                        vim.api.nvim_get_runtime_file("", true),
                        "/home/mt/.luarocks/lib/",
                    }
                }
            }
        }

        local opts = { noremap=true, silent=true }
        local keymap = vim.keymap
        local on_attach = function (client, bufnr)
            opts.buffer = bufnr
            opts.desc = "See available code actions"
            keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
        end

        lspc.clangd.setup{}
        lspc.pylyzer.setup{}
        lspc.ts_ls.setup({
            on_attach = on_attach
        })
        lspc.eslint.setup{}
        lspc.tailwindcss.setup{}
        lspc.cssls.setup{}

    end,
	lazy = true,
	dependecies = {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim"},
	event = {"BufReadPost", "BufNewFile"},
	cmd = { "LspInfo", "LspInstall", "LspUninstall" }
}
