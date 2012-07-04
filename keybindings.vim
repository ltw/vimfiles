" REMAP LEADER TO ','
"-------------------------------------------------
let mapleader = ","

" SHOW NERDTREE WITH LINE NUMBERS FOR EASIER NAVIGATION
"-------------------------------------------------
map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeFind<CR>

" BUFFER NAVIGATION
"-------------------------------------------------
map <leader>, <C-^>
map <leader>] :bnext<CR>
map <leader>[ :bprev<CR>
map <leader>ls :buffers<CR>

" QUICKLY OPEN/SOURCE (.vimrc/.gvimrc)
"-------------------------------------------------
nmap <Leader>vv :e $HOME/.vimrc<CR>
nmap <Leader>gg :e $HOME/.gvimrc<CR>
nmap <Leader>ss :source $HOME/.vimrc<Bar>:source $HOME/.gvimrc<CR>
nmap <leader>sv :source $HOME/.vimrc<CR>

" TCCOMMENT
"-------------------------------------------------
let g:tcommentMapLeaderOp1 = '<Leader>c'

" TOGGLE SHOW INVISIBLES
"-------------------------------------------------
noremap <leader>i :set list!<CR>

" TRIM AND SAVE
"-------------------------------------------------
map <Leader>sd :FixWhitespace<CR>:w<CR>

" MOVEMENT & WRAPPED LONG LINES
" This solves the problem that pressing down jumps your cursor 'over' the current line to the next line
"-------------------------------------------------
nnoremap j gj
nnoremap k gk

" REMOVE ANNOYING F1 HELP
"-------------------------------------------------
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" RESELECT VISUAL BLOCK AFTER IN/OUTDENT
"-------------------------------------------------
vnoremap < <gv
vnoremap > >gv

" EASY WINDOW NAVIGATION
"-------------------------------------------------
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Align selected Cucumber table with <Bar>
vmap <silent><Bar> :Align <Bar><CR>gv:S/\s\+$//e<CR>gv:S/^\s//e<CR>gv<Esc>

" Convert between spaces and tabs
map <Leader>I :set list<CR>:FixWhitespace<CR>

" Clear search
map <silent><Leader>/ :nohls<CR>

" Toggle word wrap
map <Leader>W :set wrap!<CR>

" Toggle spell checking
map <Leader>S :set spell!<CR>

" Ack
map <Leader>f :Ack<Space>

" Cycle between windows with Tab and Shift-Tab
map <silent><Tab> :wincmd w<CR>
map <silent><S-Tab> :wincmd W<CR>

" Quick-quit quickfix window
nmap <silent><Leader>q :cclose<CR>

" Copy relative path of current file to clipboard
map <Leader>cf :let @*=expand('%')<CR>
