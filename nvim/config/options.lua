local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 0,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  -- colorcolumn = "80",
  -- colorcolumn = "120",
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = true,                         -- we don't need to see things like -- INSERT -- anymore
  showtabline = 0,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  tabstop = 4,                             -- insert 2 spaces for a tab
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  cursorline = false,                       -- highlight the current line
  number = true,                           -- set numbered lines
  laststatus = 3,
  showcmd = false,
  ruler = false,
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  relativenumber = true,                   -- line counting from the current line number
  -- shortmess = "a",                          -- avoid all the hit-enter messages

  -- Folding
  -- foldmethod = "indent",
  -- foldcolumn = "auto",
  -- nofoldenable = 1,
  -- foldlevel = 99,
  -- foldtext = -- custom folding method

  -- nvim cmp related (autocomplete)
  --  completeopt="menu,menuone,noselect",

  -- hidden characters
  list = true,
  listchars = "space:·"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.cmd 'colorscheme nord'
-- vim.cmd 'colorscheme catppuccin'
-- vim.cmd.colorscheme 'nordic'
-- vim.cmd.colorscheme 'melange'
vim.cmd.colorscheme 'melange'


vim.api.nvim_exec(
[[
    set clipboard=unnamedplus 
]], false
)

