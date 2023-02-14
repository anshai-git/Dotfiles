local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
    -- Let packer manage itself
    use 'wbthomason/packer.nvim'

    -- Nord theme
    use 'arcticicestudio/nord-vim'

    -- Status line
    use 'itchyny/lightline.vim'

      -- commenting utility
    use 'terrortylor/nvim-comment'

    -- bracket pair closing utility
    use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
    }

    -- code moving utility
    use 'fedepujol/move.nvim'

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
    }

    if packer_bootstrap then
      require('packer').sync()
    end

    -- Mason
    use "williamboman/mason.nvim"
    use {
        'ms-jpq/coq.artifacts',
        branch = 'artifacts'
    }

    --Lsp && mason config
    use {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }
    

    -- Autocompletion
    use {
        'ms-jpq/coq_nvim',
        branch = 'coq'
    }

end)
