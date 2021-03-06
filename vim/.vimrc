" Basic Settings
set nocompatible
set nobackup

" Disable arrow keys to maximize frustration
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Font Settings
set gfn=Inconsolata:h17

" Enable filetype detection
filetype plugin indent on

" Statusline Customization
"set laststatus=2
"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Default File Format
set fileformats=unix,dos

" Search
set ignorecase
set smartcase
set incsearch
"set hlsearch "hilights all matches of the last search

" Set relative line numbers for better movements and
" assorted display options
if version >= 703
    set rnu
endif
set number
set ruler
set showcmd
set wildmenu
set list listchars=tab:»·,trail:·
set diffopt=filler,vertical,iwhite
set nowrap

" Whitespace and Indentation
set autoindent " copy indent from current line when starting a new line
set backspace=2
set expandtab " use spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab " inserts blanks according to shiftwidth in front of a line

" Syntax Highlighting
syntax on

" Select All Mappings
map <c-a> ggVG
imap <c-a> <Esc>ggVG

" Code Folding
set foldmethod=indent   " Fold based on indent
set nofoldenable        " Dont fold by default, only when, e.g., zc
set foldlevel=99        " Folds with higher levels will be closed by
                        " default, i.e. none when set to 99

" Reselect visual block after indent/outdent.
vnoremap < <gv
vnoremap > >gv

" Plugins -----------------------------------------------------------------

" Load Bundles using Pathogen
let g:pathogen_disabled = []
if !has("gui_running")
    call add(g:pathogen_disabled, 'command-t')
endif
call pathogen#incubate()
call pathogen#helptags()
call pathogen#infect()

" Solarized Colorscheme Settings (http://ethanschoonover.com/solarized)
" colorscheme solarized
" set background=dark
" colorscheme monokai
colorscheme atom-dark

" Command-T (https://wincent.com/products/command-t)
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>
let g:CommandTWildIgnore=&wildignore . ",**/bower_components/*,**/node_modules/*"

" Omni and SuperTab
set ofu=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

" Vim Sauce
let g:sauce_path = "~/.vim/sauces"
