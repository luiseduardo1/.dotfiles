

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        General settings"                                 " 
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

" Auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

syntax on               " syntax highlight
set hlsearch            " search highlighting


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      Vundle Bundles + Settings                           " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off            " Required by Vundle

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()     
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

"Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" start plugin defintion
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'itchyny/lightline.vim'      
Plugin 'Lokaltog/vim-easymotion'    
Plugin 'tpope/vim-surround'         

" -- Web Development
Plugin 'Shutnik/jshint2.vim'        
Plugin 'mattn/emmet-vim'            
Plugin 'kchmck/vim-coffee-script'   
Plugin 'groenewege/vim-less'        
Plugin 'skammer/vim-css-color'      
Plugin 'hail2u/vim-css3-syntax'     
Plugin 'digitaltoad/vim-jade'  
Plugin 'scrooloose/nerdTree'

" All of your Plugins must be added before the following line
call vundle#end()            " Required
filetype plugin indent on    " Required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Plugins Settings                                 " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" start NERDTree on start-up and focus active window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" map FuzzyFinder
noremap <leader>b :FufBuffer<cr>
noremap <leader>f :FufFile<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Theme/Colors                                   " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set t_Co=256                " Enable 256-color mode
syntax enable               " Enable syntax highlighting 
color molokai               " Set colorscheme 
"colorscheme badwolf        " Set colorscheme


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              Vim UI                                      " 
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      Text Formatting/Layout                              " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent            " Auto-indent
set tabstop=4            " Tab spacing
set softtabstop=4         " Unify
set shiftwidth=4          " Indent/outdent by 2 columns
set expandtab             " Use spaces instead of tabs

" Create folders
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
nnoremap <space> za     " space open/closes folds
set foldmethod=indent   " fold based on indent level0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Shortcuts                                    " 
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

:command Tree :NERDTree  


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Backups                                      " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
