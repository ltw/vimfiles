" NERDTree
"-------------------------------------------------
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeHijackNetrw     = 0
let g:loaded_netrw            = 1 " Disable netrw
let g:loaded_netrwPlugin      = 1 " Disable netrw
let g:NERDTreeMinimalUI       = 1
let g:NERDTreeDirArrows       = 1
let g:NERDTreeWinSize         = 51
let g:NERDTreeWinPos          = 'right'

" SYNTASTIC
"-------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_haml_checkers = ['haml_lint']
let g:syntastic_ruby_checkers = ['rubylint']

" INDENT GUIDES
"-------------------------------------------------
let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

" QUICKFIXSIGNS
"-------------------------------------------------
let g:quickfixsigns_classes = ['vcsdiff']

" CTRLP
"-------------------------------------------------
let g:ctrlp_clear_cache_on_exit   = 1
let g:ctrlp_working_path_mode     = 0 " Handle working path manually
let g:ctrlp_dotfiles              = 0 " Ignore all dot/hidden files
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_files             = 20000
let g:ctrlp_custom_ignore         = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\backups$\|\logs$\|\tmp$',
  \ 'file': '',
  \ 'link': '',
  \ }

" Move rooter out of the way to make way for tcomment
noremap <Leader>ro <Plug>RooterChangeToRootDirectory

let g:clojure_special_indent_words = 'deftype,defrecord,reify,proxy,extend-type,extend-protocol,letfn,defconcerto'

let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "!bundle exec rspec -f d -c {spec}"
