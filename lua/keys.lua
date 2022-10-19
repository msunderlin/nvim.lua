--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})
map('n','ft', [[:NvimTreeToggle<CR>]], {})
