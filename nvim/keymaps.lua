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

-- Use with telesope to find files in the root of a git project
function find_files_in_project_root(opts)
  opts = opts or {}
  opts.cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  require 'telescope.builtin'.find_files(opts)
end

-- Use with telesope to live grep files in the root of a git project
function live_grep_in_project_root(opts)
  opts = opts or {}
  opts.cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  require 'telescope.builtin'.live_grep(opts)
end

-- replace word
keymap('n', '<leader>x', "*``cgn", noremap_silent)
keymap('n', '<leader>X', "#``cgN", noremap_silent)

-- Window movement
keymap('n', '<C-j>', '<C-w>j', noremap)
keymap('n', '<C-k>', '<C-w>k', noremap)
keymap('n', '<C-h>', '<C-w>h', noremap)
keymap('n', '<C-l>', '<C-w>l', noremap)

-- Jumplist
keymap('n', '<Left>', '<C-o>', noremap)
keymap('n', '<Right>', '<C-i>', noremap)

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
-- local resession = require('resession')
-- keymap("n", "<leader>ss", "resession.save", noremap_silent)
-- keymap("n", "<leader>sl", "resession.load", noremap_silent)
-- keymap("n", "<leader>sd", "resession.delete", noremap_silent)

-- Telescope plugin mappings
local builtin = require('telescope.builtin')
keymap('n', '<leader>ff', "<cmd>Telescope find_files theme=ivy <CR>", {})
keymap('n', '<leader>fg', "<cmd>Telescope live_grep theme=ivy <CR>", {})
keymap('n', '<leader>fr', "<cmd>Telescope oldfiles theme=ivy <CR>", {})
keymap('n', '<leader>fb', "<cmd>Telescope buffers theme=ivy <CR>", {})
keymap('n', '<leader>fh', "<cmd>Telescope help_tags theme=ivy <CR>", {})

-- Neogit
keymap('n', '<leader>gg', "<cmd> Neogit kind=split <CR>", noremap_silent)

-- Toggle line wrap
keymap('n', '<leader>ww', "<cmd>set wrap! <CR>", noremap_silent)

-- Gitsigns
keymap('n', '<Up>', '<cmd>Gitsigns prev_hunk <CR>', noremap_silent)
keymap('n', '<Down>', '<cmd>Gitsigns next_hunk <CR>', noremap_silent)
keymap('n', '<leader>gh', '<cmd>Gitsigns toggle_linehl <CR>', noremap_silent)
keymap('n', '<leader>gd', '<cmd>Gitsigns toggle_deleted <CR>', noremap_silent)

-- Oil
keymap('n', '<leader>dd', '<cmd>Oil <CR>', noremap_silent)

-- Trouble
keymap('n', '<leader>tt', '<cmd>TroubleToggle <CR>', noremap_silent)
