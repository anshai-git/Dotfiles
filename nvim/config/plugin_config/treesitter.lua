return function(use)
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    require 'nvim-treesitter.configs'.setup {
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "gnn", -- set to `false` to disable one of the mappings
                node_incremental = "grn",
                scope_incremental = "grc",
                node_decremental = "grm",
            },
        },
    }
end
