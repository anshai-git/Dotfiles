local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap =
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
end

return require("packer").startup(function(use)
    -- Let packer manage itself
    use("wbthomason/packer.nvim")

    -- Color themes
    use("arcticicestudio/nord-vim")
    use("EdenEast/nightfox.nvim")
    use("rebelot/kanagawa.nvim")
    use({ "catppuccin/nvim", as = "catppuccin" })
    use("sainnhe/everforest")
    use("sainnhe/gruvbox-material")
    use("savq/melange-nvim")
    use("marko-cerovac/material.nvim")
    use("Mofiqul/vscode.nvim")

    -- Utility lua functions use("nvim-lua/plenary.nvim")

    -- Status line
    -- use 'itchyny/lightline.vim'

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    -- commenting utility
    use("terrortylor/nvim-comment")

    -- bracket pair closing utility
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })

    -- code moving utility
    use("fedepujol/move.nvim")

    -- FZF
    use("junegunn/fzf.vim")

    -- Tree Sitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
    })

    -- Wildmenu
    use({
        "gelguy/wilder.nvim",
        config = function()
        end,
    })

    if packer_bootstrap then
        require("packer").sync()
    end

    -- LSP ZERO <3
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" }, -- Required
            { "williamboman/mason.nvim" }, -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" }, -- Required
            { "hrsh7th/cmp-nvim-lsp" }, -- Required
            { "hrsh7th/cmp-buffer" }, -- Optional
            { "hrsh7th/cmp-path" }, -- Optional
            { "saadparwaiz1/cmp_luasnip" }, -- Optional
            { "hrsh7th/cmp-nvim-lua" }, -- Optional

            -- Snippets
            { "L3MON4D3/LuaSnip" }, -- Required
            { "rafamadriz/friendly-snippets" }, -- Optional
        },
    })

    --Lsp config with Coq
    -- use {
    --     "williamboman/mason-lspconfig.nvim",
    --     "neovim/nvim-lspconfig"
    -- }
    --
    -- -- Mason
    -- use "williamboman/mason.nvim"
    --
    -- -- Autocompletion
    -- use {
    --     'ms-jpq/coq_nvim',
    --     branch = 'coq'
    -- }
    --
    -- -- Autocomplete snippets
    -- use {
    --     'ms-jpq/coq.artifacts',
    --     branch = 'artifacts'
    -- }

    -- Null-ls
    use("jose-elias-alvarez/null-ls.nvim")

    -- TODO Comments highlighter
    use({
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    })

    -- Telescope
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1", -- or branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" }, { "kdheepak/lazygit.nvim" } },
    })

    -- highlight colorizer
    use("norcalli/nvim-colorizer.lua")

    -- Zen mode
    use("folke/zen-mode.nvim")

    -- Tabs
    use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

    -- File Browser
    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        },
        tag = "nightly", -- optional, updated every week. (see issue #1193)
    })

    -- vim utils
    use("junegunn/fzf.vim")

    --key map utility
    use({
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 0
            require("which-key").setup({
                -- default settings if empty
            })
        end,
    })

    -- Surrounding words with characters
    -- TODO: this is not working for whatever reason
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    })

    -- Trouble
    use({
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
    })

    -- Hyperfocus writing
    use("junegunn/limelight.vim")

    -- Screen saver
    use({
        "folke/drop.nvim",
        event = "VimEnter",
        config = function()
            require("drop").setup()
        end,
    })

    -- Git
    use("dinhhuy258/git.nvim") -- For git blame & browse

    -- Git history
    use("tpope/vim-fugitive")
    use("junegunn/gv.vim")

    -- Gitsigns
    use({
        "lewis6991/gitsigns.nvim", -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    })

    use({
        "TimUntersberger/neogit",
        requires = "nvim-lua/plenary.nvim",
    })

    -- Emmet
    use("mattn/emmet-vim")

    --Lspkind (vscode-like pictograms to neovim built-in lsp)
    use("onsails/lspkind.nvim")

    -- Nvim JDTLS
    use("mfussenegger/nvim-jdtls")

    -- Emacs like dired
    use({
        "X3eRo0/dired.nvim",
        requires = "MunifTanjim/nui.nvim",
    })

    -- Multi line cursor
    use("mg979/vim-visual-multi")
end)
