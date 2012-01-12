let g:indent_guides_auto_colors = 1
colorscheme twilight_lucas

" GVIM
"-------------------------------------------------
if has("gui_gtk")
  source $HOME/.vim/gui_gtk.vim
end

" MACVIM
"-------------------------------------------------
if has("gui_macvim")
  source $HOME/.vim/gui_macvim.vim
endif

" VIMENTER
"-------------------------------------------------
if isdirectory(argv(0))
  au VimEnter * :NERDTreeToggle
  au VimEnter * :wincmd p
endif

" Turn off cursor blink
set guicursor=a:blinkon0

" Colour columns
hi ColorColumn guibg=#222222
