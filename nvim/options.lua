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
  tabstop = 2,

  -- the number of spaces inserted for each indentation
  shiftwidth = 2,

  -- convert tabs to spaces
  expandtab = true,

  -- set numbered lines
  number = true,

  -- line counting from the current line number
  relativenumber = true,

  -- more space in the neovim command line for displaying messages
  cmdheight = 0,

  -- hidden characters
  -- list = true,
  -- listchars = "space:·",

  -- smart case
  smartcase = true,

  -- set term gui colors (most terminals support this)
  termguicolors = true,

  -- faster completion (4000ms default)
  updatetime = 1,

  -- wildmenu
  -- wildmenu = true,

  -- Scroll offset
  so = 5
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.markdown_fenced_languages = { 'bash=sh', 'java', 'lua', 'javascript=js', 'typescript=ts', 'rust', 'c', 'cpp' }
-- Other options
vim.g.user_emmet_leader_key = '<C-e>'
vim.opt.path:append '**'
vim.cmd.colorscheme 'melange'
