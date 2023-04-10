require('lualine').setup({
    options = { theme = "horizon" },
    sections = {
        lualine_a = {
            {
                'buffers',
            }
        }
    }
})
