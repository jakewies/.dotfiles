vim.g.lightline = {
    colorscheme = 'tokyonight',
    active = { 
        left = { 
            { 'mode', 'paste' }, 
            { 'gitbranch', 'filename', 'modified' } 
        }
    },
    component_function = { 
        gitbranch = 'fugitive#head' 
    }
}
