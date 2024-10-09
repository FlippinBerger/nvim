require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { { 'filename', file_status = true, path = 4 } },
        lualine_b = { 'buffers' },
        lualine_c = { '' },
        lualine_x = { 'branch', 'diff' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
}
