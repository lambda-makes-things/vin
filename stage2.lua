vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
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
Plug 'goolord/alpha-nvim'

vim.call('plug#end')

-- lsp init
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()

-- color
vim.cmd[[colorscheme dracula]]

-- sets
vim.cmd('set mouse=a')
vim.cmd('set nosplitright')
vim.cmd('set number')

-- mapx
require'mapx'.setup{ global = true }
nnoremap("ff", "<cmd>Telescope find_files<cr>")
nnoremap("fg", "<cmd>Telescope live_grep<cr>")
nnoremap("tt", "<cmd>NvimTreeFocus<cr>")
nnoremap("qq", "<cmd>q | q<cr>")
nnoremap("zx", "<cmd>bnext<cr>")
nnoremap("cx", "<cmd>bprev<cr>")


-- nvim-tree
require("nvim-tree").setup({
	open_on_setup = true,
	view = {
		side = "left",
		width = 30
	}
})

-- bufferline config
vim.opt.termguicolors = true
require("bufferline").setup{}
require("scope").setup()

-- Treesitter conf
require'nvim-treesitter.configs'.setup {
  auto_install = true,
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}


-- alpha
require'alpha'.setup(require'alpha.themes.dashboard'.config)

-- Dracula config
local dracula = require("dracula")
dracula.setup({
  -- customize dracula color palette
  colors = {
    bg = "#282A36",
    fg = "#F8F8F2",
    selection = "#44475A",
    comment = "#6272A4",
    red = "#FF5555",
    orange = "#FFB86C",
    yellow = "#F1FA8C",
    green = "#50fa7b",
    purple = "#BD93F9",
    cyan = "#8BE9FD",
    pink = "#FF79C6",
    bright_red = "#FF6E6E",
    bright_green = "#69FF94",
    bright_yellow = "#FFFFA5",
    bright_blue = "#D6ACFF",
    bright_magenta = "#FF92DF",
    bright_cyan = "#A4FFFF",
    bright_white = "#FFFFFF",
    menu = "#21222C",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
  },
  -- show the '~' characters after the end of buffers
  show_end_of_buffer = true, -- default false
  -- use transparent background
  transparent_bg = true, -- default false
  -- set custom lualine background color
  lualine_bg_color = "#44475a", -- default nil
  -- set italic comment
  italic_comment = true, -- default false
  -- overrides the default highlights see `:h synIDattr`
  overrides = {
    -- Examples
    -- NonText = { fg = dracula.colors().white }, -- set NonText fg to white
    -- NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
    -- Nothing = {} -- clear highlight of Nothing
  },
})

