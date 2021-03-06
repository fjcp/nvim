local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- Syntax Highlighting and Visual Plugins
    use 'norcalli/nvim-colorizer.lua'
    use 'tjdevries/colorbuddy.nvim'
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons', config = "require'bufferline'.setup{}"}
    use {'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }   
    --use {'glepnir/galaxyline.nvim', branch = 'main'}
    use 'mhinz/vim-startify'
    use 'RRethy/vim-illuminate'

    -- Tree-Sitter
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'p00f/nvim-ts-rainbow'
    use 'windwp/nvim-ts-autotag'

    -- Colorschemes
    use {'marko-cerovac/material.nvim', requires = 'tjdevries/colorbuddy.nvim'}
    use 'joshdick/onedark.vim'
    use 'gruvbox-community/gruvbox'
    use 'arcticicestudio/nord-vim'

    -- LSP and Autocomplete
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    use 'windwp/nvim-autopairs'

    -- Version Control
--    use 'kdheepak/lazygit.nvim'
    use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim', config = "require('neogit').setup {}"}
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

    -- Language Specific
    use 'davidgranstrom/nvim-markdown-preview'

    -- Terminal Integration
    use 'akinsho/nvim-toggleterm.lua'

    -- Navigation
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}}
    use 'kyazdani42/nvim-tree.lua'
    use 'phaazon/hop.nvim'

    -- Other
    use {'terrortylor/nvim-comment', config = "require('nvim_comment').setup()"}
    use 'lukas-reineke/format.nvim'
    use 'folke/which-key.nvim'
    use 'skywind3000/asyncrun.vim'
    use {'kkoomen/vim-doge', run = ':call doge#install()'}
    use 'rhysd/vim-clang-format'

end)
