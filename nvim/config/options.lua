local options = {
    -- Titlebar (filename on top side)
    title = true,

    -- highlight all matches on previous search pattern
    hlsearch = true,

    -- ignore case in search patterns
    ignorecase = true,

    -- we don't need to see things like -- INSERT -- anymore
    showmode = true,

    -- insert 2 spaces for a tab
    tabstop = 4,

    -- the number of spaces inserted for each indentation
    shiftwidth = 4,

    -- convert tabs to spaces
    expandtab = true,

    -- set numbered lines
    number = true,

    -- line counting from the current line number
    relativenumber = true,

    -- more space in the neovim command line for displaying messages
    -- cmdheight = 0,

    -- hidden characters
    -- list = true,
    -- listchars = "space:·",

    -- smart case
    smartcase = true,

    -- set term gui colors (most terminals support this)
    termguicolors = true,

    -- faster completion (4000ms default)
    updatetime = 300,

    -- wildmenu
    -- wildmenu = true,

    -- Scroll offset
    so = 10
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Other options
vim.opt.path:append '**'

-- vim.cmd.colorscheme 'catppuccin'
-- vim.cmd.colorscheme 'radioactive_waste'
vim.cmd.colorscheme 'miasma'
