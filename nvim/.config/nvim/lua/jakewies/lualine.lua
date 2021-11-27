require('lualine').setup {
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', {'diagnostics', sources={'nvim_lsp'}}},
    lualine_c = {},
    lualine_x = {'buffers'},
    lualine_y = {'location'},
    lualine_z = {'encoding'}
  }
}
