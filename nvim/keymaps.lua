-- options
local noremap_silent = { noremap = true, silent = true }
local noremap = { noremap = true }
local silent = { silent = true }

-- sohrter function name
local keymap = vim.api.nvim_set_keymap

-- remap leader key
keymap("", "<Space>", "<Nop>", noremap_silent)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--  Modes:

--  normal_mode:  "n"
--  insert_mode:  "i"
--  visual_mode:  "v"
--  visual_block_mode:  "x"
--  term_mode: "t"
--  command_mode: "c"

-- Using this with telesope to find files in the root of a git project
function find_files_in_project_root(opts)
  opts = opts or {}
  opts.cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  require 'telescope.builtin'.find_files(opts)
end

-- Using this with telesope to live grep files in the root of a git project
function live_grep_in_project_root(opts)
  opts = opts or {}
  opts.cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  require 'telescope.builtin'.live_grep(opts)
end

keymap("n", "<leader>h", "<cmd>split<CR>", noremap_silent)

-- built-in terminal
keymap("n", "<leader>t", "<cmd>split<CR> <cmd>term<CR>i", noremap_silent)
keymap("t", "<Esc>", "<C-\\><C-N>", noremap)
keymap("t", "<C-x>", "<cmd>q<CR>", noremap)

-- lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format() <CR>", noremap_silent)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition() <CR>", noremap)
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references() <CR>", noremap)

-- Move plugin mappings
keymap("n", "<A-j>", ":MoveLine(1)   <CR>", noremap_silent)
keymap("n", "<A-k>", ":MoveLine(-1)  <CR>", noremap_silent)
keymap("n", "<A-h>", ":MoveHChar(-1) <CR>", noremap_silent)
keymap("n", "<A-l>", ":MoveHChar(1)  <CR>", noremap_silent)
keymap("v", "<A-j>", ":MoveBlock(1)   <CR>", noremap_silent)
keymap("v", "<A-k>", ":MoveBlock(-1)  <CR>", noremap_silent)
keymap("v", "<A-h>", ":MoveHBlock(-1) <CR>", noremap_silent)
keymap("v", "<A-l>", ":MoveHBlock(1)  <CR>", noremap_silent)

-- Append empty line
keymap("n", "<S-Enter>", "O<ESC>", noremap_silent)
keymap("n", "<Enter>", "o<ESC>", noremap_silent)

-- Resession plugin mappings
local resession = require('resession')
keymap("n", "<leader>ss", "resession.save", noremap_silent)
keymap("n", "<leader>sl", "resession.load", noremap_silent)
keymap("n", "<leader>sd", "resession.delete", noremap_silent)

-- Telescope plugin mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', "<cmd>lua find_files_in_project_root() <CR>", {})
vim.keymap.set('n', '<leader>fg', "<cmd>lua live_grep_in_project_root() <CR>", {})
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Neogit
vim.keymap.set('n', '<leader>gg', "<cmd> Neogit kind=split <CR>", noremap_silent)
