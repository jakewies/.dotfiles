-- must be set before calling require
vim.g.nvim_tree_indent_markers = 1 -- this option shows indent markers when folders are open

require('nvim-tree').setup {
    view = {
        hide_root_folder = true
    }
}

-- This highlight override is based on the tokyonight
-- theme. Changing the theme will cause NvimTreeEndOfBuffer to break
vim.cmd[[
    augroup NvimTreeHighlightGroups
        autocmd!
        autocmd BufEnter,ColorScheme * highlight NvimTreeEndOfBuffer guifg=#1f2335
    augroup END
]]
