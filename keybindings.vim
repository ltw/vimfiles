" Remap leader to ','
let mapleader = ","

" Show nerdtree with line numbers for easier navigation
map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<CR>

" Leader-Leader toggles between last open buffers
map <Leader><Leader> <C-^>

" Quickly open/source (.vimrc/.gvimrc)
nmap <Leader>vv :e $HOME/.vimrc<CR>
nmap <Leader>gg :e $HOME/.gvimrc<CR>
nmap <Leader>ss :source $HOME/.vimrc<Bar>:source $HOME/.gvimrc<CR>
nmap <leader>sv :source $HOME/.vimrc<CR>

" Toggle show invisibles
noremap <leader>i :set list!<CR>

" Trim and save
map <Leader>sd :FixWhitespace<CR>:w<CR>

" Movement & wrapped long lines -- solves soft-wrap movement confusion
nnoremap j gj
nnoremap k gk

" Reselect visual block after in/outdent
vnoremap < <gv
vnoremap > >gv

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remove annoying F1 help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Highlight word at cursor without changing position
nnoremap <Leader>h *<C-O>

" Convert between spaces and tabs
map <Leader>I :set list<CR>:FixWhitespace<CR>

" Clear search
map <silent><Leader>/ :nohls<CR>

" Toggle word wrap
map <Leader>W :set wrap!<CR>

" Toggle spell checking
map <Leader>S :set spell!<CR>

" Cycle between windows with Tab and Shift-Tab
map <silent><Tab> :wincmd w<CR>
map <silent><S-Tab> :wincmd W<CR>

" Quick-quit quickfix window
nmap <silent><Leader>q :cclose<CR>

" Copy relative path to the system pasteboard
nnoremap <silent><Leader>cf :let @*=expand('%')<CR>

" Copy relative path and line number to the system pasteboard
nnoremap <silent><Leader>cF :let @*=expand('%').':'.line('.')<CR>

" TComment bindings
let g:tcommentMapLeaderOp1 = '<Leader>c'

" CtrlP bindings
let g:ctrlp_map = '<Leader>t'
map <Leader>l :CtrlPBuffer<CR>
map <Leader>m :CtrlPMRUFiles<CR>
map <Leader>T :CtrlPClearAllCaches<CR>:CtrlP<CR>

" Markdown bindings
map <Leader>md :set textwidth=80 cc+=80<CR>

" vim-rspec bindings
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

" Toggle comments as invisible
nmap <Leader>Ci :hi! link Comment Ignore<CR>
nmap <Leader>Cc :hi! link Comment Comment<CR>

" Run Syntastic check on current file
nmap <silent><Leader>sc :SyntasticCheck<CR>
