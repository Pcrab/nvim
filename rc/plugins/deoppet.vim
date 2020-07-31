call deoppet#initialize()
call deoppet#custom#option('snippets_dirs', globpath(&runtimepath, 'neosnippets', 1, 1))

imap <M-i>  <Plug>(deoppet_expand)
imap <M-k>  <Plug>(deoppet_jump_forward)
imap <M-j>  <Plug>(deoppet_jump_backward)
