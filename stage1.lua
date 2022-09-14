local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})

Plug 'Mofiqul/dracula.nvim'

-- lsp things
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'
Plug "tiagovla/scope.nvim"
Plug "nvim-lua/plenary.nvim"
Plug "BurntSushi/ripgrep"
Plug "sharkdp/fd"
Plug "nvim-telescope/telescope.nvim"
Plug "b0o/mapx.nvim"
Plug 'kyazdani42/nvim-tree.lua'

vim.call('plug#end')
