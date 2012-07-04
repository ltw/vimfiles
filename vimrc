source $HOME/.vim/vundle.vim
source $HOME/.vim/global.vim
source $HOME/.vim/functions.vim
source $HOME/.vim/keybindings.vim
source $HOME/.vim/plugin_config.vim
source $HOME/.vim/auto_commands.vim

" VimEnter
if isdirectory(argv(0))
  au VimEnter * :Rooter
endif

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
