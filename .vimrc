" Enable Vim exclusive features - Must come first
set nocompatible

" Enable file type plugins
filetype plugin indent on

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'leafgarland/typescript-vim'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'

Plug 'othree/csscomplete.vim'
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --gocode-completer' }
let g:ycm_autoclose_preview_window_after_insertion = 1

Plug 'vim-syntastic/syntastic'
let g:syntastic_go_checkers = ['go', 'gofmt', 'golint', 'gometalinter', 'govet']

Plug 'scrooloose/nerdtree'
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'vim-airline/vim-airline'
set laststatus=2
let g:airline_powerline_fonts = 1

" Initialize plugin system
call plug#end()

" Editor settings
set hidden          " hides buffers instead of closing them
syntax on           " syntax highlighting
set number          " always show line numbers
set ruler           " ruler on bottom right displaying line, column
set colorcolumn=100 " delimiter line
set list            " show invisible characters
"set spell           " spell checking
set nowrap          " don't wrap lines
set showmatch       " show matching parenthesis

" Share clipboard with macOS
set clipboard=unnamed

" Paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Search
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search is all lowercase, case-sensitive otherwise
set incsearch       " show match as search proceeds
set hlsearch        " search highlighting

" History
set history=1000
set undolevels=1000

" Tabs & Indent - Always 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent

" Color
highlight LineNr ctermfg=grey

" Mapping
imap ;so System.out.println();<left><left>
