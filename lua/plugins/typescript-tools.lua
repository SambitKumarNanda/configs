return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	enabled = false,
	opts = {
		tsserver_plugins = {
			"ts_ls",
			"vtsls",
			"tailwindcss",
			"css_ls",
			"css_variables",
			"tailwindcss",
			"cssmodules_ls",
		},
	},
}
