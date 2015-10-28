"Author:    Luis E. Obando 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        General settings"                                 " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible        " not compatible with the old-fashion vi mode"
set bs=2                " allow backspacing over everything in insert mode
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set autoread            " auto read when file is changed from outside

filetype off            " necessary to make ftdetect work on Linux
syntax on
filetype on             " Enable filetype detection
filetype indent on      " Enable filetype-specific indenting
filetype plugin on      " Enable filetype-specific plugins

"auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

syntax on               " syntax highlight
set hlsearch            " search highlighting


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      Vundle Bundles + Settings                           " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off            " Required by Vundle

"  Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()     
"call vundle#rc()

" let Vundle manage Vundle, required
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

set number                          " show line number
set cursorline                      " highlight current line
set wildmenu
set lazyredraw                      " redraw only when we need to.
set showmatch                       " highlight matching [{()}]
set foldenable                      " enable folding
set incsearch                       " search as characters are entered
set hlsearch                        " highlight matches
set backspace=indent,eol,start      "Can delete in insertion mode


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      Text Formatting/Layout                              " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 2 columns
set expandtab             " use spaces instead of tabs


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Shortcuts                                    " 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap jj <esc>

