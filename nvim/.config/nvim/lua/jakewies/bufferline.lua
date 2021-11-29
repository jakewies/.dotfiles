require('bufferline').setup {
    options = {
        diagnostics = false,
        modified_icon = '~',
        offsets = {
            {
                filetype = "NvimTree", 
                text = "File Explorer",
                text_align = "center",
                highlight = "NvimTreeNormal"
            }
        },
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        enforce_regular_tabs = false
    }
}
