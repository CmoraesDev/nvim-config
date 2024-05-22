return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		{
			"L3MON4D3/LuaSnip",
			build = "make install_jsregexp",
			dependencies = {
				{
					"rafamadriz/friendly-snippets",
					config = function()
						require("luasnip.loaders.from_vscode").lazy_load()
					end,
				},
			},
		},
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		luasnip.config.setup()

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			completion = { completeopt = "menu,menuone,noinsert" },
			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			},

			mapping = cmp.mapping.preset.insert({
				["<c-Space>"] = cmp.mapping.complete(),
				["<c-j>"] = cmp.mapping.select_next_item(),
				["<c-k>"] = cmp.mapping.select_prev_item(),
				["<tab>"] = cmp.mapping.confirm({ select = true }),
				["<c-J>"] = cmp.mapping.scroll_docs(4),
				["<c-K>"] = cmp.mapping.scroll_docs(-4),
			}),
		})
	end,
}
