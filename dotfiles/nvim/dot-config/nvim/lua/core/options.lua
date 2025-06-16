local opt = vim.opt
local o = vim.o
local g = vim.g

----------------------------------------------------------

-- Set Leader Key to <Space>
g.mapleader = " "

-- Mark Current Line
o.cursorline = true
-- o.clipboard = "unnamedplus"
o.cursorlineopt = "number"

-- Indenting
o.expandtab = true
o.shiftwidth = 4
o.smartindent = true
o.tabstop = 4
o.softtabstop = 4

o.autoindent = true
o.ignorecase = true
o.smartcase = true

-- Numbers
o.number = true
o.relativenumber = true
o.ruler = true

o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400

-- Disable Default Providers
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0
