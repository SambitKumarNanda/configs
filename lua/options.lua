-- spacing options
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable 24-bit colour
vim.g.termguicolors = true

-- Enable nerd fonts
vim.g.have_nerd_font = true

-- line numbers
vim.g.number = true
-- relative number
vim.wo.relativenumber = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- instead raise a dialog asking if you wish to save the current file(s)
vim.opt.confirm = true

-- clipboard
vim.opt.clipboard = "unnamedplus"
