" neoformat
noremap <c-f> :Neoformat<cr>
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

