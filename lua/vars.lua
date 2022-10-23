--[[ vars.lua ]]

local g = vim.g
g.t_co = 256
g.background = "dark"

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path



vim.o.updatetime = 300
vim.o.incsearch = false
vim.wo.signcolumn = 'yes'
