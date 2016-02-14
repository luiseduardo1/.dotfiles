"       /$$   /$$                                /$$              
"      | $$$ | $$                               |__/              
"      | $$$$| $$  /$$$$$$   /$$$$$$  /$$    /$$ /$$ /$$$$$$/$$$$ 
"      | $$ $$ $$ /$$__  $$ /$$__  $$|  $$  /$$/| $$| $$_  $$_  $$
"      | $$  $$$$| $$$$$$$$| $$  \ $$ \  $$/$$/ | $$| $$ \ $$ \ $$
"      | $$\  $$$| $$_____/| $$  | $$  \  $$$/  | $$| $$ | $$ | $$
"      | $$ \  $$|  $$$$$$$|  $$$$$$/   \  $/   | $$| $$ | $$ | $$
"      |__/  \__/ \_______/ \______/     \_/    |__/|__/ |__/ |__/
" 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        GENERAL SETTINGS                                  " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible        " Not compatible with the old-fashion vi mode"
set bs=2                " Allow backspacing over everything in insert mode
set history=50          " Keep 50 lines of command line history
set ruler               " Show the cursor position all the time
set autoread            " Auto read when file is changed from outside

filetype off            " Necessary to make ftdetect work on Linux
syntax on
filetype on             " Enable filetype detection
filetype indent on      " Enable filetype-specific indenting
filetype plugin on      " Enable filetype-specific plugins

" Auto reload nvimrc when editing it
autocmd! bufwritepost .nvimrc source ~/.nvimrc

syntax on               " syntax highlight
set hlsearch            " search highlighting

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           THEME/COLORS                                   " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256                " Enable 256-color mode
syntax enable               " Enable syntax highlighting 
"color molokai               " Set colorscheme 
"colorscheme badwolf        " Set colorscheme


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              NVIM UI                                     " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number                          " Show line number
set cursorline                      " Highlight current line
set wildmenu
set lazyredraw                      " Redraw only when we need to.
set showmatch                       " Highlight matching [{()}]
set foldenable                      " Enable folding
set incsearch                       " Search as characters are entered
set hlsearch                        " Highlight matches
set backspace=indent,eol,start      " Can delete in insertion mode
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      TEXT FORMATTING/LAYOUT                              " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent            " Auto-indent
set wrap                 " Wrap lines when longer than the window width
set tabstop=4            " Tab spacing
set softtabstop=4         " Unify
set shiftwidth=4          " Indent/outdent by 4 columns
set shiftround
set expandtab             " Use spaces instead of tabs

" Create folders
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level0

au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             SHORTCUTS                                    " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap jj <esc>

" To stop using the key arrows in Insert mode "
inoremap <up> <C-o>:echoe "Don't use the arrows keys noob!"<CR>
inoremap <down> <C-o>:echoe "Don't use the arrows keys noob!"<CR>
inoremap <left> <C-o>:echoe "Don't use the arrows keys noob!"<CR>
inoremap <right> <C-o>:echoe "Don't use the arrows keys noob!"<CR>

" To stop using the key arrows in Normal mode "
noremap <up> <C-o>:echoe "Don't use the arrows keys noob!"<CR>
noremap <down> <C-o>:echoe "Don't use the arrows keys noob!"<CR>
noremap <left> <C-o>:echoe "Don't use the arrows keys noob!"<CR>
noremap <right> <C-o>:echoe "Don't use the arrows keys noob!"<CR>

