local servers = {
	-- Lua lsp
	"lua_ls",
	-- Python lsps
	"pyright",
	"ruff",
	-- C, C++ lsps
	"clangd",
	-- CSS lsps
	"cssls",
	"css_variables",
	"cssmodules_ls",
	"tailwindcss",
	-- Go lsps
	"gopls",
	-- Typescript lsps
	"ts_ls",
	"vtsls",
	-- Rust lsps
	"rust_analyzer",
	-- Svelte
	"svelte",
}

return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
			{
				"mason-org/mason.nvim",
				config = function()
					require("mason").setup({
						ui = {
							icons = {
								package_installed = "✓",
								package_pending = "➜",
								package_uninstalled = "✗",
							},
						},
					})
				end,
			},
			{
				"mason-org/mason-lspconfig.nvim",
				config = function()
					require("mason-lspconfig").setup({
						automatic_enable = false,
						ensure_installed = servers,
					})
				end,
			},
			{ "neovim/nvim-lspconfig" },
		},
		config = function()
			vim.lsp.config("pyright", {
				python = {
					disableOrganizeImports = false,
					openFilesOnly = true,
					autoImportCompletions = true,
					autoSearchPaths = true,
					diagnosticMode = "openFilesOnly",
					analysis = {
						autoImportCompletions = true,
						autoSearchPaths = true,
						diagnosticMode = "openFilesOnly",
						useLibraryCodeForTypes = true,
					},
				},
			})
			vim.lsp.enable(servers)
		end,
	},
}
