local wk = require("which-key")

wk.register({
    f = {
        name = "Telescope",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        g = { "<cmd>Telescope live_grep<cr>", "Live Grep"}
    },
    b = {
        name = "Bufferline",
        h = { "<cmd>BufferLineCyclePrev<cr>", "Go right" },
        l = { "<cmd>BufferLineCycleNext<cr>", "Go left" },
        p = { "<cmd>BufferLinePick<cr>", "Pick buffer" },
        k = { "<cmd>BufferLinePickClose<cr>", "Pick close" },
        m = { "<cmd>BufferLineCloseRight<cr>", "Close Right" },
        n = { "<cmd>BufferLineCloseLeft<cr>", "Close Left" },
        L = { "<cmd>BufferLineMoveNext<cr>", "Move right" },
        H = { "<cmd>BufferLineMovePrev<cr>", "Move left" }
    },
    e = {
        name = "NvimTree",
        e = { "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" },
        o = { "<cmd>NvimTreeOpen<cr>", "Open NvimTree" },
    },
    w = {
        name = "mixed",
        o = { "<cmd>ZenMode<cr>", "Toggle ZenMode" },
    },
    t = {
        name = "Trouble",
        d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
    },
    g = {
        name = "Git",
        g = { "<cmd>LazyGit<cr>", "Lazygit" },
        c = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Current line blame" },
        l = { "<cmd>Gitsigns blame_line<cr>", "Blame line" },
        j = { "<cmd>Gitsigns next_hunk<cr>", "Next hunk" },
        k = { "<cmd>Gitsigns prev_hunk<cr>", "Previous hunk" },
        h = { "<cmd>Gitsigns toggle_linehl<cr>", "Toggle line hi" },
        n = { "<cmd>Gitsigns toggle_numhl<cr>", "Toggle num hi" },
        s = { "<cmd>Gitsigns toggle_signs<cr>", "Toggle signs" },
        d = { "<cmd>Gitsigns toggle_deleted<cr>", "Toggle deleted" },
        w = { "<cmd>Gitsigns toggle_word_diff<cr>", "Toggle word diff" }
    },
    l = {
        name = "LSP",
        f = { "<cmd>lua vim.lsp.buf.format({ timeout_ms = 2000 })<cr>", "Format" },
    },
}, { prefix = "<leader>" })
