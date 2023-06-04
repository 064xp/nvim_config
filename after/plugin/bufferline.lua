vim.opt.termguicolors = true
local bufferline = require('bufferline')
bufferline.setup {
    options = {
        color_icons = true,
        separator_style = "thin",
        diagnostics = "nvim_lsp",
        indicator = "underline",
    }
}
