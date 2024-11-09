return {
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	init = function()
		local lsp = require("lspconfig")
		lsp.lua_ls.setup({})
	end,
}
