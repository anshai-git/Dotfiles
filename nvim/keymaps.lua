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

function cargo_run()
  local pre_populated = 'cargo run -q --'
  local command = vim.fn.input('Command: ', pre_populated)

   -- Create a new scratch buffer
  local buffer_id = vim.api.nvim_create_buf(true, true)

  vim.cmd("botright new | horizontal resize 15")
  vim.api.nvim_buf_set_option(0, 'buftype', 'nofile')
  vim.api.nvim_buf_set_option(0, 'bufhidden', 'wipe')
  vim.api.nvim_buf_set_option(0, 'buflisted', false)
  vim.api.nvim_buf_set_option(0, 'swapfile', false)

  -- Open a job to run the command asynchronously
  local job_id = vim.system({ 'cargo', 'build' }, {
    text = true,
    stdout = function(_, data)
      -- Callback for stdout output
      vim.schedule(function()
        -- Switch to the scratch buffer
        vim.api.nvim_set_current_buf(buffer_id)
        vim.api.nvim_buf_set_lines(0, -1, -1, false, vim.fn.split(data, '\n'))
        vim.api.nvim_set_current_buf(0)
      end)
    end,
    stderr = function(_, data)
      -- Callback for stdout output
      vim.schedule(function()
        vim.api.nvim_set_current_buf(buffer_id)
        vim.api.nvim_buf_set_lines(0, -1, -1, false, vim.fn.split(data, '\n'))
        vim.api.nvim_set_current_buf(0)
      end)
    end,
  }, on_exit)
end

keymap('n', '<leader>cr', '<cmd>lua cargo_run()<CR>', noremap_silent)

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
keymap('n', '<leader>ff', "<cmd>lua find_files_in_project_root() <CR>", {})
keymap('n', '<leader>fg', "<cmd>lua live_grep_in_project_root() <CR>", {})
keymap('n', '<leader>fr', "<cmd>Telescope oldfiles <CR>", {})
keymap('n', '<leader>fb', "<cmd>Telescope buffers <CR>", {})
keymap('n', '<leader>fh', "<cmd>Telescope help_tags <CR>", {})

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
