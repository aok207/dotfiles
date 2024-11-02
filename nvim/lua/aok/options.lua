vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs and indentations
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true

opt.hlsearch = false
opt.incsearch = true

opt.cursorline = true

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.signcolumn = "yes"
opt.wrap = false
opt.updatetime = 250
opt.scrolloff = 10
