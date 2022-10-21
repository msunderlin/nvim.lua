--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local builtin = require('telescope.builtin')

-- remap the key used to leave insert mode
map('i', 'jk', '', {})
map('n','ft', [[:NvimTreeToggle<CR>]], {})

map('n',' ws', [[:split<CR>]], {})
map('n',' wv', [[:vsplit<CR>]], {})
map('n',' fzf', [[:Telescope find_files<CR>]], {})
map('n',' fzf', [[:Telescope find_files<CR>]], {})
map('n',' fff', [[:Telescope live_grep<CR>]], {})
-- map('n', ' ff', builtin.find_files, {})
-- map('n', ' fg', builtin.live_grep, {})
-- map('n', ' fb', builtin.buffers, {})
-- map('n', ' fh', builtin.help_tags, {})
