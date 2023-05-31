local null_ls = require("null-ls")

local sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.code_actions.eslint,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.gofumpt,
    --null_ls.builtins.completion.spell,
}

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
null_ls.setup({
    sources = sources,
    on_attach = function(client)
        if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
                callback = function()
                    vim.lsp.buf.format()
                end
            })
        end
    end
})

vim.keymap.set("n", "<leader>ff", function()
    vim.lsp.buf.format()
end
)
