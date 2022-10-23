-- [[ plug.lua ]]
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use {'wbthomason/packer.nvim'}
    use {'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
}
use {
    'nvim-lualine/lualine.nvim',                     -- statusline
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

use {'j-hui/fidget.nvim'}
use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = {'nvim-lua/plenary.nvim', 
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
}  
}
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
}

-- use {'f-person/git-blame.nvim'}
--[[ Theme ]] 
use {'glepnir/dashboard-nvim'}
use {'neovim/nvim-lspconfig'}
use {'xiyaowong/nvim-transparent'}

--[[ Git ]] -- 
use {
  'tanvirtin/vgit.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  }
}


--[[ Colors ]]

use {'folke/tokyonight.nvim'}
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

-- My plugins here
-- use 'foo1/bar1.nvim'
-- use 'foo2/bar2.nvim'

-- Automatically set up your configuration after cloning packer.nvim
-- Put this at the end after all plugins
if packer_bootstrap then
    require('packer').sync()
end
end)

