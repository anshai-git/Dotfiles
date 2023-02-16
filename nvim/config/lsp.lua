local coq = require 'coq'
local lsp = require 'lspconfig'

local on_attach = function(client, bufnr)
  -- TODO: add these mapping to which-key

  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)

  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)

  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

lsp.sumneko_lua.setup {
    coq.lsp_ensure_capabilities {
        flags = lsp_flags,
        on_attach = on_attach,
    }
}
lsp.jdtls.setup { }

lsp.ocamllsp.setup { }
lsp.pyright.setup{ }

lsp.angularls.setup {
    coq.lsp_ensure_capabilities {
        flags = lsp_flags,
        on_attach = on_attach,
    }
}

lsp.tsserver.setup { 
    coq.lsp_ensure_capabilities {
        flags = lsp_flags,
        on_attach = on_attach,
				cmd = { "typescript-language-server", "--stdio" }
    }
}

lsp.rust_analyzer.setup{

settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
}

lsp.clangd.setup{ }


-- require('lspconfig')['lua_language_server'].setup{
-- }
