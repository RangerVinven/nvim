vim.g.mapleader = " "

local keymap = vim.keymap

-- General keymaps
keymap.set("n", "x", '"_x') -- Deletes a character without copying it
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>+", "<C-a") -- Increments the active number
keymap.set("n", "<leader>-", "<C-x") -- Decrements the active number

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>sv", "<C-w>v") -- Splits window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- Splits window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- Make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- CLose current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- Opens new tab 
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- Closes current tab 
keymap.set("n", "<leader>tn", ":tabn<CR>") -- Goes to the next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- Goes to the previous tab

keymap.set("n", "<leader>h", "i#")
keymap.set("n", "<leader>d", "i<div></div><ESC>F<ha")

-- Plugin keymaps
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
