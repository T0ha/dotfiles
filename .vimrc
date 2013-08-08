set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on

" filetype plugin on

Bundle 'gmarik/vundle'
Bundle 'klen/python-mode'
Bundle 'snipMate'
Bundle 'Tagbar'
Bundle 'surround.vim'
Bundle 'matchit.zip'
Bundle 'jimenezrick/vimerl'
Bundle 'derekwyatt/vim-scala'
Bundle 'vim-scripts/dbext.vim.git'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive.git'
Bundle 'csv.vim'
" Bundle 'scala.vim'

syn on 
set tabstop=4
set shiftwidth=4
set expandtab
set nonumber
set hlsearch
set wildmode=list:longest
set scrolloff=4
set backupdir=/tmp
set directory=/tmp

" RU-EN Ctrl-^
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

" Mappings settings
let mapleader = ","
nnoremap * *N
nnoremap 8 :nohlsearch<CR>
nmap <C-s> :w<cr>
imap <C-s> <Esc>:w<cr>

" noremap <C-S> :w !sodo tee %<cr>
" Tabs
nnoremap <leader>k :tabnew<cr>
" nnoremap <leeder>l :
nnoremap <leader>n gT
nnoremap <leader>m gt

if has('gui')
   set guioptions-=T 
   set guioptions+=m  
   colorscheme torte
endif

" Python-mode conf
let g:pymode_lint_write = 1
let g:pymode_lint_checker = "pyflakes" 
" , pep8"
let g:pymode_lint_ignore = "E401, E221, E241,E501"
let g:pymode_lint_cwindow = 0

" Load show documentation plugin
let g:pymode_doc = 1

" Key for show python documentation
let g:pymode_doc_key = 'K'
let g:pymode_folding = 1

" Airline
set laststatus=2
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_linecolumn_prefix = '␊ '
let g:airline_linecolumn_prefix = '␤ '
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'
let g:airline_paste_symbol = 'Þ'
let g:airline_paste_symbol = '∥'

" DbExt configuration
" My t0ha-para-sles11
let g:dbext_default_profile_mytest_odissey = 'type=MYSQL:user=root:passwd=2360087:host=192.168.24.110:dbname=odissey'
" Main odissey 
let g:dbext_default_profile_odissey= 'type=MYSQL:user=root:passwd=2360087:host=192.168.2.154:dbname=odissey'
" Chaikovski odissey 
let g:dbext_default_profile_chaikovsky_odissey= 'type=MYSQL:user=root:passwd=2360087:host=10.180.20.61:dbname=odissey'
" Tumen odissey 
let g:dbext_default_profile_tumen_odissey= 'type=MYSQL:user=root:passwd=2360087:host=10.202.95.110:dbname=odissey'
" Surikova odissey 
let g:dbext_default_profile_surikova_odissey= 'type=MYSQL:user=root:passwd=2360087:host=10.159.102.226:dbname=odissey'
" Map postgres
let g:dbext_default_profile_map = 'type=PGSQL:user=postgres:passwd=2360087:host=192.168.2.126:dbname=stat'
" Local postgres
let g:dbext_default_profile_local = 'type=PGSQL:user=postgres:passwd=2360087:host=127.0.0.1:dbname=postgres'
" Surikova odissey 
let g:dbext_default_profile_gai_odissey= 'type=MYSQL:user=root:passwd=2360087:host=10.158.17.17:dbname=odissey'
