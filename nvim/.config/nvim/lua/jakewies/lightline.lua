vim.g.lightline = {
    colorscheme = 'gruvbox_material',
    active = { 
        left = { 
            { 'mode', 'paste' }, 
            { 'gitbranch', 'filename', 'modified' } }
        },
    component_function = { 
        gitbranch = 'fugitive#head' 
    }
}
