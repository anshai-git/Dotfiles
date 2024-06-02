return {
  "cdmill/neomodern.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("neomodern").setup({
      -- Main options --
      style = "roseprime",    -- choose between 'iceclimber', 'coffeecat', 'darkforest', 'campfire', 'roseprime', 'daylight'
      toggle_style_key = '1', -- keymap to cycle between styles
      toggle_style_list = {   -- a table of which styles to cycle through, by default all styles are included
        "iceclimber",
        "coffeecat",
        "darkforest",
        "campfire",
        "roseprime",
        "daylight"
      },
      transparent = false, -- don't set background
      term_colors = true,  -- if true enable the terminal
      --
      -- -- Formatting --
      code_style = {
        comments = "italic",
        conditionals = "none",
        functions = "none",
        keywords = "none",
        headings = "bold", -- markdown headings
        operators = "none",
        keyword_return = "none",
        strings = "none",
        variables = "none",
      },

      -- -- UI options --
      ui = {
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
        colored_docstrings = true,    -- if true, docstrings will be highlighted like strings, otherwise they will be highlighted like comments
        plain = false,                -- don't set background for search
        show_eob = true,              -- show the end-of-buffer tildes

        --   -- Plugins Related --
        lualine = {
          bold = true,
          plain = false,          -- use a less distracting lualine. note: works best when no lualine separators are used
        },
        telescope = "borderless", -- choose between 'borderless' or 'bordered'
        diagnostics = {
          darker = true,          -- darker colors for diagnostic
          undercurl = true,       -- use undercurl for diagnostics
          background = true,      -- use background color for virtual text
        },
      },

      -- -- Custom Highlights --
      colors = {},     -- Override default colors
      highlights = {}, -- Override highlight groups
    })

    -- LOAD
    require("neomodern").load()
  end
}
