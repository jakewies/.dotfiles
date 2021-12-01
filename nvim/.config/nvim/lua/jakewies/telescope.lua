local telescope = require('telescope')

telescope.setup {
    defaults = {
        prompt_prefix = "$ ",
        color_devicons = false
    }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
telescope.load_extension('fzf')
