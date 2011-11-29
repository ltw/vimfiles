set guifont=Menlo:h15

" FULLSCREEN
"-------------------------------------------------
set lines=100
set columns=300

" TRANSPARENCY
"-------------------------------------------------
set transparency=1

" HIDE TOOLBAR
"-------------------------------------------------
set guioptions=egmrt

" COLOUR COLUMNS
"-------------------------------------------------
set cc+=80

" Set color column for features
autocmd BufWinEnter *.feature set cc+=11
autocmd BufWinLeave *.feature set cc-=11

" Disable left scrollbar for NERDTree
set guioptions-=L

" Cmd+T to open Command-T
macmenu &File.New\ Tab key=<nop>
nmap <D-t> :CommandT<CR>
imap <D-t> <Esc>:CommandT<CR>

" Cmd+Shift+T for Command-T with cache flush
macmenu &File.Open\ Tab\.\.\. key=<nop>
nmap <D-T> :call CommandTWithFlush()<CR>
imap <D-T> <Esc>:call CommandTWithFlush()<CR>

" Stop Cmd+W from closing window
macmenu &File.Close key=<nop>
nmap <D-w> :CommandW<CR>
imap <D-w> <Esc>:CommandW<CR>

" Cmd+F for Ack
macmenu &Edit.Find.Find\.\.\. key=<nop>
nmap <D-f> :Ack<Space>
imap <D-f> <Esc>:Ack<Space>

menu File.Close\ Instance :qa<CR>
inoremenu File.Close\ Instance :qa<CR>

