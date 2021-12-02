-- must be set before calling require
vim.g.nvim_tree_indent_markers = 1 -- this option shows indent markers when folders are open

require('nvim-tree').setup {
    auto_close = true,
    view = {
        auto_resize = true,
    }
}

vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- This highlight override is based on the tokyonight
-- theme. Changing the theme will cause NvimTreeEndOfBuffer to break
vim.cmd[[
    augroup NvimTreeHighlightGroups
        autocmd!
        autocmd BufEnter,ColorScheme * highlight NvimTreeEndOfBuffer guifg=#1f2335
    augroup END
]]
