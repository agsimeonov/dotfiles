" Enable Vim exclusive features - Must come first
set nocompatible

" Enable file type plugins
filetype plugin indent on

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
