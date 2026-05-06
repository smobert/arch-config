vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabes and indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent to new lines

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- includes case when searching with mixed case

opt.cursorline = true -- highlights active line

opt.termguicolors = true
opt.background = "dark"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split window rules
opt.splitright = true -- vertical splits will put the new window to the right
opt.splitbelow = true -- horizontal splits will put the new window beneath
