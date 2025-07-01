return {
	"ibhagwan/fzf-lua",

	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"sharkdp/fd",
		"BurntSushi/ripgrep",
		"dandavison/delta",
		"mfussenegger/nvim-dap",
		"nvim-treesitter/nvim-treesitter-context",
		"OXY2DEV/markview.nvim",
	},
	opts = {},
	config = function()
		local builtin = require("fzf-lua")
		-- use `fzf-lua` for replace vim.ui.select
		builtin.register_ui_select()
		builtin.setup({
			winopts = { preview = { default = "bat" } },
			files = {
				find_opts = [[-type f \! -path '*/.git/*' \! -path '*/node_modules/*' \! -path '*/__pycache__/*' \! -path '*/venv/*' \! -path '*/env/*']],
				rg_opts = [[--color=never --hidden --files -g "!.git/*" -g "!node_modules/*" -g "!__pycache__/*" -g "!venv/*" -g "!env/*"]],
				fd_opts = [[--color=never --hidden --type f --type l --exclude .git --exclude node_modules --exclude __pycache__ --exclude venv --exclude env]],
			},
		})
		vim.keymap.set("n", "<leader>ff", ":FzfLua files <CR>", { desc = "[F]ind [F]iles" })
		vim.keymap.set("n", "<leader>fg", ":FzfLua live_grep <CR>", { desc = "[L]ive [G]rep" })
		vim.keymap.set("n", "<leader>fq", ":FzfLua quickfix <CR>", { desc = "[Q]uickfix [L]ist" })

		-- Execute a code action, usually your cursor needs to be on top of an error
		-- or a suggestion from your LSP for this to activate.
		vim.keymap.set({ "n", "x" }, "<leader>la", ":FzfLua lsp_code_actions<CR>", { desc = "[C]ode [A]ction" })
		vim.keymap.set("n", "<leader>lR", builtin.lsp_references, { desc = "[G]oto [R]eference" })
		vim.keymap.set("n", "<leader>ld", builtin.lsp_declarations, { desc = "[G]oto [D]eclaration" })
		vim.keymap.set("n", "<leader>ls", builtin.lsp_document_symbols, { desc = "[O]pen [D]ocument Symbols" })
	end,
}
