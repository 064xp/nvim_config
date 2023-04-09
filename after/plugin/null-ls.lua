local null_ls = require("null-ls")

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.codespell.with({filetypes = {'markdown'}}),
        null_ls.builtins.diagnostics.eslint
        --null_ls.builtins.completion.spell,
    },
    on_attach = function(client)
        if client.resolved_capabilities.document_formatting then 
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()")
        end
    end
})
