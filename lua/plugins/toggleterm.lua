return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		builtin = require("toggleterm")
		builtin.setup({
			open_mapping = [[<c-\>]],
			float_opts = {
				border = "curved",
			},
		})
		vim.keymap.set(
			"n",
			"<M-h>",
			":ToggleTerm size=15 direction=horizontal <CR>",
			{ desc = "Open terminal in the horizonal direction" }
		)

		vim.keymap.set(
			"n",
			"<M-v>",
			":ToggleTerm size=30 direction=vertical <CR>",
			{ desc = "Open terminal in the vertical direction" }
		)

		vim.keymap.set("n", "<M-f>", ":ToggleTerm size=15 direction=float <CR>", { desc = "Open floating terminal" })
	end,
}
