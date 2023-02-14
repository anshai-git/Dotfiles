local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
--  cmdheight = 0,                           -- more space in the neovim command line for displaying messages
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
  -- timeoutlen = 100,                     -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  tabstop = 4,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
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
  foldmethod = "indent",
  foldcolumn = "auto",
  -- nofoldenable = 1,
  -- foldlevel = 99,
  -- foldtext = TODO: add custom folding method

  -- nvim cmp related (autocomplete)
  --  completeopt="menu,menuone,noselect",

  -- hidden characters
  list = true,
  listchars = "space:·"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
 
 vim.cmd 'colorscheme nord'
 
 vim.g.lightline = {
    colorscheme = "nord" 
 }
 
-- vim.api.nvim_exec(
-- [[
--     hi TSConditional guifg=#88c0d0
--     hi TSConstant guifg=#d8dee9 gui=bold
--     hi TSConstructor guifg=#ebcb8b gui=bold
--     hi TSException guifg=#88c0d0 gui=italic
--     hi TSKeyword guifg=#9a6590 gui=bold
--     hi TSMethod guifg=#ebcb8b
--     hi TSProperty guifg=#8fbcbb gui=italic
--     hi TSRepeat guifg=#88c0d0
--     hi TSTypeBuiltin guifg=#81a1c1 gui=bold
--     hi TSVariableBuiltin guifg=#d08770
-- ]],
-- false)

-- Automatically setting padding for alacritty when opening / closing vim
-- function Sad(line_nr, from, to, fname)
--   vim.cmd(string.format("silent !sed -i '%ss/%s/%s/' %s", line_nr, from, to, fname)) 
-- end
-- 
-- function IncreasePadding() 
--   Sad('07', 0, 20, '~/dotfiles/alacritty/alacritty.windows.yml')
--   Sad('08', 0, 20, '~/dotfiles/alacritty/alacritty.windows.yml')
-- end
-- 
-- function DecreasePadding()
--   Sad('07', 20, 0, '~/dotfiles/alacritty/alacritty.windows.yml')
--   Sad('08', 20, 0, '~/dotfiles/alacritty/alacritty.windows.yml')
-- end
-- 
-- vim.cmd[[
--   augroup ChangeAlacrittyPadding
--    au! 
--    au VimEnter * lua DecreasePadding()
--    au VimLeavePre * lua IncreasePadding()
--   augroup END 
-- ]]

