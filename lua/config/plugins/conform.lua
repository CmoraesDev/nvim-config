return {
	"stevearc/conform.nvim",
	lazy = false,
	opts = {
		format_on_save = function(_)
			return {
				timeout_ms = 500,
			}
		end,
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { { "prettierd", "prettier" } },
			java = { "clang-format", "google-java-format", "ast-grep" },
		},
	},
}
