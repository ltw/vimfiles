" FILETYPES
"-------------------------------------------------
autocmd FileType ruby,rails,haml,eruby,yaml,ru,cucumber set ai sw=2 sts=2 et
if has("gui_running")
  autocmd FileType ruby,rails,haml,eruby,yaml,ru,cucumber :SyntasticEnable
endif

" MARKDOWN FILES
"-------------------------------------------------
autocmd BufRead,BufNewFile {*.md,*.mkd,*.markdown} setlocal ft=markdown wrap

" Map Shift-Enter to open a file in NERDTree without losing NERDTree focus
autocmd FileType nerdtree map <buffer> <S-CR> go
