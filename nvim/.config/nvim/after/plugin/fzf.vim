let $FZF_DEFAULT_OPTS='--layout=reverse --border --padding=1'


if executable('rg')
  let g:rg_derive_root='true'
endif


" Custom :RG command (improvement on :Rg)
" https://github.com/junegunn/fzf.vim#example-rg-command-with-preview-window
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command], 'window': { 'height': 1, 'width': 1 }}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -bang -nargs=* RG call RipgrepFzf(<q-args>, <bang>0)


" Customize :Files command
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, {'window': { 'height': 0.4, 'width': 0.3, 'yoffset': 0.05 } }, <bang>0)


" Remaps
nnoremap <C-p> :Files<cr> 
nnoremap <C-f> :RG<Cr>
