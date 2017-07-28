set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on

filetype plugin on

Bundle 'gmarik/vundle'
Bundle 'klen/python-mode'
Bundle 'nblock/vim-dokuwiki'
Bundle 'snipMate'
Bundle 'Tagbar'
Bundle 'davidhalter/jedi-vim'
Bundle 'surround.vim'
Bundle 'matchit.zip'
" Bundle 'jimenezrick/vimerl'
Bundle 'edkolev/erlang-motions.vim'
Bundle 'vim-erlang/vim-erlang-runtime'
Bundle 'vim-erlang/vim-erlang-compiler'
Bundle 'vim-erlang/vim-erlang-skeletons'
Bundle 'vim-erlang/vim-erlang-omnicomplete'
Bundle 'vim-erlang/vim-erlang-tags'
Bundle 'derekwyatt/vim-scala'
Bundle 'vim-scripts/dbext.vim.git'
Bundle 'bling/vim-airline'
Bundle 'Textile-for-VIM'
Bundle 'kien/ctrlp.vim.git'
Bundle 'tpope/vim-fugitive.git'
Bundle 'csv.vim'
Bundle 'zhaocai/DirDiff.vim'
Bundle 'mediawiki'
Bundle 'elixir-lang/vim-elixir'
Bundle 'slashmili/alchemist.vim'
Bundle 'vim-scripts/mako.vim'
Bundle 'Glench/Vim-Jinja2-Syntax'
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
set foldmethod=marker
set backspace=indent,eol,start

" Elixir
au BufRead,BufNewFile *.ex set filetype=elixir
au BufRead,BufNewFile *.exs set filetype=elixir
" Autoreload vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Highlight 80 col overflow
highlight ColorColumn ctermbg=magenta
" set colorcolumn=81
call matchadd('ColorColumn', '\%81v', 100)

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
nnoremap <C-g> <Esc>:Gst<cr>
" TagBar
nmap <leader>t :TagbarToggle<cr>
" noremap <C-S> :w !sodo tee %<cr>
" Tabs
nnoremap <leader>k :tabnew<cr>
" nnoremap <leeder>l :
nnoremap <leader>n gT
nnoremap <leader>m gt

if has('gui')
   set guioptions-=T 
   set guioptions+=m  
endif

colorscheme desert
" colorscheme torte

" DirDiff settings
let g:DirDiffExcludes = ".git, *.csv"
let g:DirDiffIgnore = "AUTO_INCREMENT=[1-9]+"

" Python-mode conf
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_lint_unmodified = 1
let g:pymode_lint_checker = "pyflakes" 
" , pep8"
let g:pymode_lint_ignore = "E401, E221, E241,E501"
let g:pymode_lint_cwindow = 0

" Load show documentation plugin
let g:pymode_doc = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_autoimport = 0
let g:pymode_rope_complete_on_dot = 0

" Key for show python documentation
let g:pymode_doc_key = 'K'
let g:pymode_folding = 0

" Airline
set laststatus=2
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#csv#enabled = 1
let g:airline#extensions#csv#column_display = 'Name'
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let airline#extensions#tabline#ignore_bufadd_pat =
            \ '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree|dbext'

"DbExt configuration
let g:dbext_default_use_sep_result_buffer = 1

" Private data is in separate file out there
source ~/Private/private.vim
