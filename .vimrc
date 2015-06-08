call pathogen#infect()
filetype plugin on
syntax on
set number
"let g:NERTTreeDirArrows=0
set t_Co=256
color mustang


function! TabSetup(width)
set expandtab
let &shiftwidth=a:width
let &tabstop=a:width
set smarttab
set autoindent
set smartindent
endfunction

call TabSetup(4)
set conceallevel=2
set concealcursor=vin
set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:clang_snippets=1
let g:clang_conceal_snippets=1
" The single one that works with clang_complete
let g:clang_snippets_engine='clang_complete'
" Make the CtrlP window scrollable
let g:ctrlp_match_window = 'results:100'
" Powerline fancy symbols
let g:Powerline_symbols = "fancy"

" Complete options (disable preview scratch window, longest removed to aways
" show menu)
" set completeopt=menu,menuone

" Limit popup menu height
" set pumheight=20

" SuperTab completion fall-back 
" let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'

set autoindent
set laststatus=2

set wildignore+=*.o,*.d,*oprofile_data*

command! -nargs=1 Tab call TabSetup(<f-args>)

nnoremap <C-f> :tabn<CR><Esc>
nnoremap <C-d> :tabp<CR><Esc>
nnoremap <C-e> :tabe 
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :CtrlP<CR>
nnoremap <F2>  :set hlsearch!<CR><Esc>
nnoremap ?     :set relativenumber!<CR><Esc>
nnoremap K     :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>



