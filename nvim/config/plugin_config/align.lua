return function(use)
    use {
        'Vonr/align.nvim',
        branch = "v2",
    }

    local NS = { noremap = true, silent = true }
    local set_key = vim.keymap.set

    -- Aligns to 1 character
    set_key(
        'x',
        'aa',
        function()
            require 'align'.align_to_char({
                length = 1,
            })
        end,
        NS
    )

    -- Aligns to 2 characters with previews
    set_key(
        'x',
        'ad',
        function()
            require 'align'.align_to_char({
                preview = true,
                length = 2,
            })
        end,
        NS
    )

    -- Aligns to a string with previews
    set_key(
        'x',
        'aw',
        function()
            require 'align'.align_to_string({
                preview = true,
                regex = false,
            })
        end,
        NS
    )

    -- Aligns to a Vim regex with previews
    set_key(
        'x',
        'ar',
        function()
            require 'align'.align_to_string({
                preview = true,
                regex = true,
            })
        end,
        NS
    )

    -- Example gawip to align a paragraph to a string with previews
    set_key(
        'n',
        'gaw',
        function()
            local a = require 'align'
            a.operator(
                a.align_to_string,
                {
                    regex = false,
                    preview = true,
                }
            )
        end,
        NS
    )

    -- Example gaaip to align a paragraph to 1 character
    set_key(
        'n',
        'gaa',
        function()
            local a = require 'align'
            a.operator(a.align_to_char)
        end,
        NS
    )
end
