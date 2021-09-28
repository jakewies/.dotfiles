require('telescope').setup {
    defaults = {
       prompt_prefix = "$ " 
    }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')


