return {
	"nvim-tree/nvim-tree.lua",
	  version = "*",
	  lazy = false,
	  dependencies = {
	    "nvim-tree/nvim-web-devicons",
	  },
	  config = function()
	    local nvim_tree = require("nvim-tree")
	    nvim_tree.setup ({
		    sort = {
			    sorter = "case_sensitive",
		    },
	    })
	    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle <CR>', {desc = 'Toggle Explorer'})
	  end,
}
