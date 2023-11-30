return {
  "pocco81/true-zen.nvim"
}

-- local api = vim.api
--
-- api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
-- api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
-- api.nvim_set_keymap("n", "<leader>zf", ":TZFocus<CR>", {})
-- api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", {})
-- api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", {})
--
-- -- or
-- local truezen = require('true-zen')
-- local keymap = vim.keymap
--
-- keymap.set('n', '<leader>zn', function()
--   local first = 0
--   local last = vim.api.nvim_buf_line_count(0)
--   truezen.narrow(first, last)
-- end, { noremap = true })
-- keymap.set('v', '<leader>zn', function()
--   local first = vim.fn.line('v')
--   local last = vim.fn.line('.')
--   truezen.narrow(first, last)
-- end, { noremap = true })
-- keymap.set('n', '<leader>zf', truezen.focus, { noremap = true })
-- keymap.set('n', '<leader>zm', truezen.minimalist, { noremap = true })
-- keymap.set('n', '<leader>za', truezen.ataraxis, { noremap = true })
