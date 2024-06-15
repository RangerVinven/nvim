local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Tabs and Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- Line wrapping
opt.wrap = true

-- Search settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor line
-- opt.cursorline = true

-- Apperance
-- opt.termguicolors = true
-- opt.backgroundcolor = "dark"
-- opt.signcolumn = "yes"

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
