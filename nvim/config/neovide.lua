vim.o.guifont = "DejaVuSansMono NFM:h12" -- text below applies for VimScript
vim.opt.linespace = 0
vim.g.neovide_scale_factor = 1.0
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0
vim.g.neovide_transparency = 0.7
vim.g.neovide_scroll_animation_length = 0.8
vim.g.neovide_hide_mouse_when_typing = false
vim.g.neovide_underline_automatic_scaling = false
vim.g.neovide_refresh_rate = 144
vim.g.neovide_remember_window_size = true
vim.g.neovide_profiler = false
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true

-- copy / paste
if vim.g.neovide then
  vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
  vim.keymap.set('n', '<M-s>', ':w<CR>') -- Save
  vim.keymap.set('v', '<M-c>', '"+y') -- Copy
  vim.keymap.set('n', '<M-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<M-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<M-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<M-v>', '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
-- vim.g.neovide_input_use_logo = 1
-- vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
-- vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
-- vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
-- vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
