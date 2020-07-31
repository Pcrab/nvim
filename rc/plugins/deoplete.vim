" deoplete.vim
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"

" tabnine
call deoplete#custom#var('tabnine', {
\ 'line_limit': 500,
\ 'max_num_results': 15,
\ })
