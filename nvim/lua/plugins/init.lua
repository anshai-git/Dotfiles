vim.pack.add({
  -- colorschemes
  'https://github.com/alljokecake/naysayer-theme.nvim',
  'https://github.com/sainnhe/everforest',
  'https://github.com/behemothbucket/gruber-darker-theme.nvim',
  'https://github.com/mikesmithgh/gruvsquirrel.nvim',
  'https://github.com/savq/melange-nvim',

  -- completion
  { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range('1') },
  'https://github.com/rafamadriz/friendly-snippets',

  -- editing
  'https://github.com/windwp/nvim-autopairs',
  'https://github.com/numToStr/Comment.nvim',
  'https://codeberg.org/andyg/leap.nvim',
  'https://github.com/tpope/vim-repeat',
  'https://github.com/mattn/emmet-vim',
  'https://github.com/mg979/vim-visual-multi',
  'https://github.com/RRethy/vim-illuminate',

  -- ui
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/folke/todo-comments.nvim',
  'https://github.com/folke/trouble.nvim',
  'https://github.com/folke/twilight.nvim',
  'https://github.com/OXY2DEV/markview.nvim',

  -- git
  'https://github.com/lewis6991/gitsigns.nvim',
  'https://github.com/NeogitOrg/neogit',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/sindrets/diffview.nvim',

  -- finder / files
  { src = 'https://github.com/nvim-telescope/telescope.nvim', version = '0.1.3' },
  'https://github.com/ibhagwan/fzf-lua',
  'https://github.com/stevearc/oil.nvim',

  -- lsp / lang
  'https://github.com/williamboman/mason.nvim',
  'https://github.com/mfussenegger/nvim-jdtls',
  'https://github.com/udalov/kotlin-vim',
}, { load = true }) -- source plugin/ and ftdetect/ scripts immediately, matching lazy.nvim's default eager load

require 'plugins.naysayer'
require 'plugins.ct_gruber_darker'
require 'plugins.devicons'
require 'plugins.comment'
require 'plugins.blink'
require 'plugins.autopairs'
require 'plugins.gitsigns'
require 'plugins.neogit'
require 'plugins.telescope'
require 'plugins.fzf'
require 'plugins.oil'
require 'plugins.todo_comments'
require 'plugins.trouble'
require 'plugins.twilight'
require 'plugins.markview'
require 'plugins.vim_illuminate'
require 'plugins.mason'
require 'plugins.jdtls'
