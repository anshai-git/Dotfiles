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

keymap("n", "<leader>h", "<cmd>split<CR>", noremap_silent)

-- built-in terminal
keymap("n", "<leader>t", "<cmd>split<CR> <cmd>term<CR>i", noremap_silent)
keymap("t", "<Esc>", "<C-\\><C-N>", noremap)
keymap("t", "<C-x>", "<cmd>q<CR>", noremap)
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format() <CR>", noremap_silent)

keymap("n", "<A-j>", ":MoveLine(1) <CR>", noremap_silent)
keymap("n", "<A-k>", ":MoveLine(-1) <CR>", noremap_silent)
keymap("n", "<A-h>", ":MoveHChar(-1) <CR>", noremap_silent)
keymap("n", "<A-l>", ":MoveHChar(1) <CR>", noremap_silent)

keymap("v", "<A-j>", ":MoveBlock(1) <CR>", noremap_silent)
keymap("v", "<A-k>", ":MoveBlock(-1) <CR>", noremap_silent)
keymap("v", "<A-h>", ":MoveHBlock(-1) <CR>", noremap_silent)
keymap("v", "<A-l>", ":MoveHBlock(1) <CR>", noremap_silent)

-- Append empty line
keymap("n", "<S-Enter>", "O<ESC>", noremap_silent)
keymap("n", "<Enter>", "o<ESC>", noremap_silent)

-- Resession
local resession = require('resession')
keymap("n", "<leader>ss", "resession.save", noremap_silent)
keymap("n", "<leader>sl", "resession.load", noremap_silent)
keymap("n", "<leader>sd", "resession.delete", noremap_silent)

-- Telescope
-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
