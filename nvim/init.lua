-- Install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.cmd("highlight! link SignColumn LineN");
vim.api.nvim_exec([[
  augroup QuickfixMappings
    autocmd!
    autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
  augroup END
]], true)

require 'lazy'.setup 'plugins'

require 'netrw'
require 'options'
require 'keymaps'

-- Personal Plugin
require 'explore'.setup()


-- If this enabled, deleting with x in vertical selection doesn't work
-- require 'leap'.add_default_mappings()
