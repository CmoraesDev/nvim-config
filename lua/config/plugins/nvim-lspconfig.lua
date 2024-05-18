return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",

		{ "j-hui/fidget.nvim", opts = {} },
		{ "folke/neodev.nvim", opts = {} },
	},

	config = function()
		local servers = { "lua_ls" }

		require("mason").setup()
		require("mason-lspconfig").setup({
			handlers = {
				function(servername)
					local server = servers[servername]
					require("lspconfig")[servername].setup(server or {})
				end,
			},
			ensure_installed = servers,
		})
	end,
}
