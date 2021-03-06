-- __     __                           _   _       _
-- \ \   / /_ _ _ __   ___  _   _ _ __| \ | |_   _(_)_ __ ___
--  \ \ / / _` | '_ \ / _ \| | | | '__|  \| \ \ / / | '_ ` _ \
--   \ V / (_| | |_) | (_) | |_| | |  | |\  |\ V /| | | | | | |
--    \_/ \__,_| .__/ \___/ \__,_|_|  |_| \_| \_/ |_|_| |_| |_|
--             |_|
-- Author: https://github.com/hackorum
-- Github: https://github.com/hackorum/VapourNvim
--
-- General
require('plugins')
require('options')
require('keybindings')

-- Syntax and Visual
require('colorscheme.gruvbox')
require('treesitter-config')
require('colorizer-config')
--require('galaxyline-config')
require('lualine-config')
--require('dashboard-config')

-- LSP and Autocomplete
require('compe-config')
require('autopairs-config')
require('language-servers')
--require('lazygit-config')
require('gitsigns-config')

-- Terminal Support
--require('toggleterm-config')

-- Navigation
require('telescope-config')
require('nvimtree-config')

-- Other
require('formatting')
