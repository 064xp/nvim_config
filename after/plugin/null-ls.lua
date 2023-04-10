local null_ls = require("null-ls")

-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier.with({
            extra_args = {"--tab-width", "4"}
        }),
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.codespell.with({filetypes = {'markdown'}}),
        --null_ls.builtins.diagnostics.eslint
        --null_ls.builtins.completion.spell,
    },
    on_attach = function()
        --vim.api.nvim_create_autocmd("BufWritePost", {
        --    callback = function()
        --        vim.lsp.buf.format()
        --    end,
        --})
    end,
})

vim.keymap.set("n", "<leader>ff", function()
    vim.lsp.buf.format()
end
)
