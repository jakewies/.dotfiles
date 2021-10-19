require('gitsigns').setup {
  signs = {
    -- These hl colors are specific to gruvbox.
    -- Switching themes will cause sign colors to break.
    add          = {hl = 'Green'   , text = ' │'},
    change       = {hl = 'Blue', text = ' │'},
    delete       = {hl = 'Red', text = ' _'},
    topdelete    = {hl = 'Red', text = ' ‾'},
    changedelete = {hl = 'Red', text = ' ~'},
  },
  current_line_blame = true,
  current_line_blame_opts = {
      virt_text_pos = 'right_align'
  }
}
