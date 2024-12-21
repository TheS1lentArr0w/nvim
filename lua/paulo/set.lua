-- Thick cursor in insert mode
vim.opt.guicursor = ""

-- Line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 space indents
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Disable wrapping
vim.opt.wrap = false

-- Swap files and undotree stuff
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Nice colours
vim.opt.termguicolors = true

-- Scrolling stops 8 lines from top/bottom
vim.opt.scrolloff = 8

-- Fast update time
vim.opt.updatetime = 50


vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
