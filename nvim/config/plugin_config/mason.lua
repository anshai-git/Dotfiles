return function(use)
    use {
        "williamboman/mason.nvim"
    }

    require 'mason'.setup()

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
        vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false
        }
    )
end
