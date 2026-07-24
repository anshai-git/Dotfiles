-- Broadcast blink.cmp's completion capabilities to every server (snippets, etc.)
vim.lsp.config('*', {
  capabilities = require('blink.cmp').get_lsp_capabilities(),
})

-- LUA
vim.lsp.config.lua_ls = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      }
    }
  }
}

-- RUST
-- base cmd/root_dir/lens settings come from nvim-lspconfig's lsp/rust_analyzer.lua;
-- layer clippy-on-save on top of it here
vim.lsp.config.rust_analyzer = {
  settings = {
    ['rust-analyzer'] = {
      check = { command = 'clippy' },
    },
  },
}

-- C
vim.lsp.config.clangd = {
  cmd = { 'clangd' },
  filetypes = { 'c' },
  settings = {}
}

-- TYPESCRIPT / JAVASCRIPT / ANGULAR / HTML / CSS / ESLINT
-- no overrides needed here; nvim-lspconfig's lsp/{ts_ls,angularls,html,cssls,eslint}.lua
-- (cmd, root_dir/root_markers, node_modules probing, etc.) are picked up automatically
-- by vim.lsp.enable() below. angularls (binary `ngserver`, root: angular.json/nx.json)
-- runs alongside ts_ls in the same .ts buffers, adding template (.html) support and
-- Angular-aware diagnostics/completion on top.

vim.lsp.enable({
  'lua_ls',
  'rust_analyzer',
  'clangd',
  'ts_ls',
  'angularls',
  'html',
  'cssls',
  'eslint',
})
