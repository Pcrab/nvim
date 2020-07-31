" New cursor movement (the default arrow keys are used for resizing windows)
"     ^
"     k
" < h   l >
"     j
"     v

" I/K keys for 5 times u/e (faster navigation)
noremap K 5k
noremap J 5j
" J key: go to the start of the line
noremap H ^
" L key: go to the end of the line
noremap L $

" Faster in-line navigation
noremap W 5w
noremap B 5b

noremap Q :q<CR>
noremap W :w<CR>
noremap X :x<CR>

" Use jk to escape
inoremap kj <Esc>
vnoremap kj <Esc>

" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l

map s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sj :set splitbelow<CR>:split<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

" Set Search
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>

" Change Window Size
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"Tab operations
map tt :tabe<CR>

map th :-tabnext<CR>
map tl :+tabnext<CR>




" Compile function
map r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!time java %<"
  elseif &filetype == 'sh'
    exec "!time sh %"
  elseif &filetype == 'zsh'
    exec "!time zsh %"
  elseif &filetype == 'python'
    silent! exec "!clear"
    exec "!time python3 %"
  elseif &filetype == 'tex'
    silent! exec "!xelatex %"
  elseif &filetype == 'go'
    silent! exec "!time go build %"
    exec "!time ./%<"
  endif
endfunc


set smartcase
