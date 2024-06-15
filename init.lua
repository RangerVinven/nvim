require("plugins-setup")
require("core.options")
require("core.keymaps")
require("core.colorscheme")

require("plugins.comment")
require("plugins.nvim-tree")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.nvim-cmp")
require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspconfig")


vim.opt.tabstop = 4       -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4    -- Number of spaces to use for each step of (auto)indent
