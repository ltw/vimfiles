" MISC
"-------------------------------------------------
syntax on                                  " Turn on syntax highlighting
filetype plugin indent on                  " Enable automatic filetype detection, filetype-specific plugins/indentation
set hidden                                 " Allow hiding buffers with unsaved changes
set listchars=trail:.,tab:>-,eol:$         " Change the invisible characters
set nolist                                 " Hide invisibles by default
set showcmd                                " Show incomplete cmds down the bottom
set showmode                               " Show current mode down the bottom
set cmdheight=2                            " Make the command line a little taller
set ttyfast                                " More smooth screen redrawing
set incsearch                              " Find the next match as we type the search
set hlsearch                               " Highlight searches by default
set ruler                                  " Show ruler
set number                                 " Show line numbers
set vb t_vb=                               " Turn off bell
set mouse=a                                " Enable the mouse
set linespace=3                            " Spacing between lines
set noswapfile                             " Disable creation of *.swp files
set t_Co=256                               " Support for xterm with 256 colors (gets overriden in .gvimrc)

" INDENTATION
"-------------------------------------------------
set shiftwidth=2                           " Number of spaces to use in each autoindent step
set tabstop=2                              " Two tab spaces
set softtabstop=2                          " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab                              " Spaces instead of tabs for better cross-editor compatibility
set autoindent                             " Keep the indent when creating a new line
set smarttab                               " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set cindent                                " Recommended seting for automatic C-style indentation
set autoindent                             " Automatic indentation in non-C files

" WRAP
"-------------------------------------------------
set nowrap                                 " Dont wrap lines
set wildmenu                               " Make tab completion act more like bash
set wildmode=list:longest                  " Tab complete to longest common string, like bash
set switchbuf=useopen                      " Don't re-open already opened buffers

" MOVING AROUND / EDITING
"-------------------------------------------------
set nostartofline                          " Avoid moving cursor to BOL when jumping around
set scrolloff=3                            " Keep 3 context lines above and below the cursor
set backspace=2                            " Allow backspacing over autoindent, EOL, and BOL
set showmatch                              " Briefly jump to a paren once it's balanced
set matchtime=2                            " (for only .2 seconds).

" BACKUPS
"-------------------------------------------------
set backupdir=$HOME/.vim/.backup
set directory=$HOME/.vim/.backup

" PERSISTENT UNDO
"-------------------------------------------------
set undodir=$HOME/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

" CODE FOLDING
"-------------------------------------------------
set foldmethod=syntax                      " Automatically fold based on syntax
set foldlevelstart=99											 " Expand all folds by default

" SEARCHING
"-------------------------------------------------
set ignorecase                             " Ignore case by default when searching
set smartcase                              " Switch to case sensitive mode if needle contains uppercase characters

" DEFAULT COLOURS FOR VIM - GVIMRC OVERRIDES THIS
"-------------------------------------------------
colorscheme jellybeans-lucas

" CUSTOM STATUS LINE
"-------------------------------------------------
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ \ \ \ \ \ [POS=%2l,%2v][%p%%]\ \ \ \ \ \ [LEN=%L]
set laststatus=2

" Save on FocusLost
au FocusLost * :silent! wall

" Use % to jump to matching begin/end of blocks as well as brackets/parens
runtime macros/matchit.vim
