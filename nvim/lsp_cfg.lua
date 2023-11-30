local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({})
lspconfig.tsserver.setup({})
lspconfig.cssls.setup({})
lspconfig.angularls.setup({})
lspconfig.jdtls.setup({})
lspconfig.clangd.setup({})
lspconfig.rust_analyzer.setup({})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false
  }
)
