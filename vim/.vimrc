

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
"call vundle#rc()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'gmarik/vundle'

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'user/L9', {'name': 'newL9'}
Plugin 'lervag/vimtex'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdTree'

" All of your Plugins must be added before the following line
call vundle#end()            " Required
filetype plugin indent on    " Required


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
set tabstop=2             " Tab spacing
set softtabstop=2         " Unify
set shiftwidth=2          " Indent/outdent by 2 columns
set expandtab             " Use spaces instead of tabs


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


