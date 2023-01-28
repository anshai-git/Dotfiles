return require('packer').startup(function(use)
  -- just packer managing itself
  use 'wbthomason/packer.nvim'

  -- color theme
  use "savq/melange"

  -- icons
  use 'ryanoasis/vim-devicons'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- LSP / DAP / Linter / Formatter installation utility
  use { "williamboman/mason.nvim" }

  -- Emmet
  use 'mattn/emmet-vim'

  -- NULL-LS
  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })
  
  -- Autocompletion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- lua snippet engine
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- commenting utility
  use 'terrortylor/nvim-comment'

  -- bracket pair closing utility
  use {
	  "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- code moving utility
  use 'fedepujol/move.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                          , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- FZF
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  -- Tree Sitter
  use {
   'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Wildmenu
  use {
    'gelguy/wilder.nvim',
    config = function()
  end,

  -- Markdown preview 
  use {
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  },

  use { 
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  }


}

end)
