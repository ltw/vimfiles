" NERDTree
"-------------------------------------------------
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeHijackNetrw     = 0
let g:loaded_netrw            = 1 " Disable netrw
let g:loaded_netrwPlugin      = 1 " Disable netrw
let g:NERDTreeMinimalUI       = 1
let g:NERDTreeDirArrows       = 1

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
let g:CommandTMatchWindowAtTop = 1

" INDENT GUIDES
"-------------------------------------------------
let g:indent_guides_color_change_percent = 3
let g:indent_guides_enable_on_vim_startup = 1

" EASYMOTION
"-------------------------------------------------
let g:EasyMotion_leader_key = '<Leader>e'

" NERD-COMMENTER
"-------------------------------------------------
let g:NERDSpaceDelims=1
