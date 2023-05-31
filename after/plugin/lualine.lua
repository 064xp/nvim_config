require('lualine').setup({
    options = { theme = "horizon" },
    sections = {
        lualine_c = {
            {
                'filename',
                path = 1,
            },
        },
        lualine_a = {
            {
                'buffers',
            },
        }
    }
})
