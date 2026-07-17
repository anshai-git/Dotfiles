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
vim.lsp.config.rust_analyzer = {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },
  settings = {}
}

-- C
vim.lsp.config.clangd = {
  cmd = { 'clangd' },
  filetypes = { 'c' },
  settings = {}
}

vim.lsp.enable({ 'lua_ls', 'rust_analyzer', 'clangd' })
