return function(use)
    use "ronisbr/nano-theme.nvim"
    use "antonio-hickey/minty-melon"
    use "nireo/focus"

    use "xero/miasma.nvim"
    use "rktjmp/lush.nvim"
    use {
        "mcchrish/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        requires = "rktjmp/lush.nvim"
    }
    use "rockerBOO/boo-colorscheme-nvim"
    use "EdenEast/nightfox.nvim"
    use "rebelot/kanagawa.nvim"
    use {
        "catppuccin/nvim",
        as = "catppuccin"
    }
    use "sainnhe/everforest"
    use "sainnhe/gruvbox-material"
    use "savq/melange-nvim"
    use "marko-cerovac/material.nvim"
    use "Mofiqul/vscode.nvim"
    use "AlexvZyl/nordic.nvim"
    use "blazkowolf/gruber-darker.nvim"

    vim.g.everforest_transparent_background = 1

    local colors = require("catppuccin.palettes").get_palette()
    colors.none = "NONE"
    require 'catppuccin'.setup({
        transparent_background = true,
        term_colors = false,
        custom_highlights = {
            Comment = { fg = colors.overlay1 },
            LineNr = { fg = colors.overlay1 },
            CursorLine = { bg = colors.none },
            CursorLineNr = { fg = colors.lavender },
        },
        compile = {
            enabled = false,
            path = vim.fn.stdpath("cache") .. "/catppuccin",
        },
        dim_inactive = {
            enabled = false,
            shade = "dark",
            percentage = 0.15,
        },
        styles = {
            comments = { "italic" },
            conditionals = { "italic" },
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
        },
        integrations = {
            -- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
        },
        color_overrides = {},
        highlight_overrides = {},
    })
end
