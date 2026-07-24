vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.cmd("highlight! link SignColumn LineN");
vim.api.nvim_exec([[
  augroup QuickfixMappings
    autocmd!
    autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
  augroup END
]], true)

require 'plugins'
require 'netrw'
require 'options'
require 'keymaps'
require 'lsp'
