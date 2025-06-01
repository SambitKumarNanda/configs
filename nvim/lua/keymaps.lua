-- Map the leader and local leader key to use space key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save" })

-- quit
vim.keymap.set("n", "<C-q>", ":wq<CR>", { desc = "Save And Quit" })

-- clear highlights
vim.keymap.set("n", "<Esc>", ":noh<CR>", { desc = "Clear highlight" })

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

-- Window management
vim.keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split Window Vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split Window Horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal width and height" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>xs", ":close<CR>", { desc = "Close current split window" }) -- close current split window

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Navigate to upper split" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Navigate to lower split" })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = " Navigate to left split" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Navigate to right split" })

-- Changing the window split direction
vim.keymap.set("n", "<leader>sv", "<C-W>L", { desc = "Move the current window to the very top" })
vim.keymap.set("n", "<leader>sh", "<C-W>J", { desc = "Move the current window to the very bottom" })

-- Moving line up and down
vim.keymap.set("n", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move the current line down" })
vim.keymap.set("n", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move the current line up" })
