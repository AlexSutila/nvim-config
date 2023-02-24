
lua require('agony')
filetype on

" TABS ------------------------------------------------------------------- {{{

" Replace spaces with tabs, don't want this in makefiles because it is
"   actually necessary that you use actual tabs
set expandtab
autocmd FileType make setlocal noexpandtab

" Make tabs four spaces
set shiftwidth=4
set autoindent
set ts=4

" }}}

" USABILITY -------------------------------------------------------------- {{{

" Maker folding method
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
	autocmd FileType lua setlocal foldmethod=marker
augroup END

" Do not let cursor scroll beyond 10 lines
set scrolloff=10

" Do not wrap lines horizontally
set nowrap

" }}}

" MAPPINGS --------------------------------------------------------------- {{{

" Faster write/quit/write+quit
nnoremap <leader>w :w <cr>
nnoremap <leader>x :x <cr>
nnoremap <leader>q :q <cr>
nnoremap <leader>Q :q! <cr>

" Open terminal window in insert mode much faster
nnoremap <C-t> :tabnew \| term <cr> i

" Nice mappings for rapid moving across tabs
nnoremap <leader>t :tabnew <cr>
nnoremap <leader>h gT
nnoremap <leader>l gt

" Center screen during vertical navigation
nnoremap <enter> <enter>z.
nnoremap <C-u> <C-u>z.
nnoremap <C-d> <C-d>z.
" I also just hate the order of this so I keep it reversed
nnoremap { }z.
nnoremap } {z.

" Center screen during searches
nnoremap * *zz
nnoremap n nzz
nnoremap N Nzz

" Arrow keys are for the weak c:<
inoremap <Down> <nop>
inoremap <Up> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
noremap <Down> <nop>
noremap <Up> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Get rid of ctrl+w for moving between split windows
noremap L <C-w>l
noremap H <C-w>h
noremap J <C-w>j
noremap K <C-w>k

" Faster window resizing
noremap <silent> <C-l> :vertical resize +5 <cr>
noremap <silent> <C-h> :vertical resize -5 <cr>
noremap <silent> <C-k> :resize +2 <cr>
noremap <silent> <C-j> :resize -2 <cr>

" }}}

