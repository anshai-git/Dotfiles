local wk = require "which-key"

wk.register({
  f = {
    name = "Files",
    f = { "<cmd>lua fdf_in_root()<cr>", "Find File" },
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = false },
    g = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    s = { "<cmd>Telescope current_buffer_fuzzy_find", "Find in Current File" }
  },
  g = {
    name = "Git",
    s = { "<cmd>Gitsigns toggle_signs<cr>", "Toggle Signs" },
    l = { "<cmd>Gitsigns toggle_linehl<cr>", "Toggle Line Highlight" },
    b = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle Current Line Blame" },
    B = { "<cmd>Gitsigns blame_line<cr>", "Toggle Current Line Blame" },
    n = { "<cmd>Gitsigns toggle_numhl<cr>", "Toggle Line Number Highlight" },
    w = { "<cmd>Gitsigns toggle_word_diff<cr>", "Toggle Word Diff" },
    d = { "<cmd>Gitsigns toggle_deleted<cr>", "Toggle Deleted" },
    D = { "<cmd>Gitsigns diffthis<cr>", "Show diff for this file" },
    c = { "<cmd>Telescope git_bcommits<cr>", "Show Commits on Current Branch" },
    r = { "<cmd>Telescope git_branches<cr>", "Show Branches" },
    f = { "<cmd>Telescope git_files<cr>", "Find in Git Files" }
  },
  l = {
    name = "Language Server",
    f = { "<cmd>LspZeroFormat<cr>", "Format File" }
  },
  b = {
    name = "Buffers",
    b = { "<cmd>Telescope buffers<cr>", "List Buffers" }
  },
  d = {
    name = "Diagnostics",
    t = { "<cmd>TroubleToggle<cr>", "Toggle Trouble" },
    r = { "<cmd>TroubleRefresh<cr>", "Trouble Refresh " },
    s = { "<cmd>Telescope diagnostics<cr>", "Telescope Diagnostics" }
  },
  w = { "<cmd>set wrap!<cr>", "Toggle Soft Wrap" }
}, { prefix = "<space>" })
