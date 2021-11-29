require('lualine').setup {
    options = {
        disabled_filetypes = {'NvimTree'}
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', {'diagnostics', sources={'nvim_lsp'}}},
        lualine_c = {},
        lualine_x = {'filetype'},
        lualine_y = {'location'},
        lualine_z = {'encoding'}
    }
}
