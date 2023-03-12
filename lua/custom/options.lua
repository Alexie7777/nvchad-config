local opt = vim.opt
-- local g = vim.g

-- <C-a> increase alphabetic character
opt.nrformats = opt.nrformats + "alpha"
-- blinking cursor
-- opt.guicursor = opt.guicursor + "a:-blinkwait175-blinkoff150-blinkon175"

-- treesitter fold
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"

opt.scrolloff = 8
opt.sidescrolloff = 8

opt.relativenumber = true
