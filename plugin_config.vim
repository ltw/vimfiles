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
let g:syntastic_enable_signs  = 1
let g:syntastic_auto_loc_list = 0
if !has("gui")
  let g:loaded_syntastic_plugin = 0
endif

" COMMAND-T
"-------------------------------------------------
let g:CommandTMaxFiles = 20000
let g:CommandTMaxHeight = 10
let g:CommandTMatchWindowAtTop = 0

" INDENT GUIDES
"-------------------------------------------------
let g:indent_guides_auto_colors = 0
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

" EASYMOTION
"-------------------------------------------------
let g:EasyMotion_leader_key = '<Leader>e'

" NERD-COMMENTER
"-------------------------------------------------
let g:NERDSpaceDelims=1

" QUICKFIXSIGNS
"-------------------------------------------------
let g:quickfixsigns_classes = ['vcsdiff']

" Move rooter out of the way to make way for tcomment
noremap <Leader>ro <Plug>RooterChangeToRootDirectory

" CtrlP
let g:ctrlp_clear_cache_on_exit   = 1
let g:ctrlp_working_path_mode     = 0 " Handle working path manually
let g:ctrlp_dotfiles              = 0 " Ignore all dot/hidden files
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore         = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\backups$\|\logs$\|\tmp$',
  \ 'file': '',
  \ 'link': '',
  \ }
