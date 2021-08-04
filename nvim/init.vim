set nocompatible
filetype off
filetype plugin on

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
set redrawtime=100000

" Mappings settings
let mapleader = ","
nnoremap * *N
nnoremap 8 :nohlsearch<CR>
nmap <C-s> :w<cr>
imap <C-s> <Esc>:w<cr>

" Elixir
au BufRead,BufNewFile *.ex set filetype=elixir
au BufRead,BufNewFile *.exs set filetype=elixir

" https://github.com/junegunn/vim-plug
" source % and :PlugInstall to install plugins
call plug#begin('~/.local/share/nvim/plugged')

"Plug 'gmarik/vundle'
" Plug 'nblock/vim-dokuwiki'
" General plugins
Plug 'tpope/vim-repeat'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-tbone'
Plug 'bogado/file-line'
Plug 'vim-scripts/matchit.zip'
Plug 'sbdchd/neoformat'

Plug 'folke/twilight.nvim', {'branch': 'main'}

lua << EOF
  require("twilight").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

Plug 'bling/vim-airline'
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
let g:airline#extensions#keymap#enabled = 0
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#tagbar#enabled = 1
let airline#extensions#tabline#ignore_bufadd_pat =
            \ '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree|dbext'

Plug 'kien/ctrlp.vim'
    if executable('ag')
      " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
      let g:ctrlp_user_command =
        \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

      " ag is fast enough that CtrlP doesn't need to cache
      let g:ctrlp_use_caching = 0
    else
      " Fall back to using git ls-files if ag is not available
      " let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
      let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
        \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
      \}
      let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
    endif
    " let g:ctrlp_map = '<c-p>'
    " let g:ctrlp_cmd = 'CtrlP'

    " Use the nearest .git directory as the cwd
    let g:ctrlp_working_path_mode = 'ra'

" Python related plugins
let g:python_host_prog = '/Users/ins/.asdf/shims/python2'
let g:python3_host_prog = '/Users/ins/.asdf/shims/python3'
Plug 'klen/python-mode', {'for': 'python', 'branch': 'develop'}
    let g:pymode = 1
    " let g:pymode_python = 'python'
    let g:pymode_lint_write = 1
    let g:pymode_virtualenv = 0
    let g:pymode_lint_unmodified = 1
    let g:pymode_lint_checker = ["pyflakes"]
    " , pep8"
    let g:pymode_lint_ignore = ["E401", "E221", "E241", "E501"]
    let g:pymode_lint_cwindow = 0

    " Load show documentation plugin
    let g:pymode_doc = 0
    let g:pymode_rope_completion = 0
    let g:pymode_rope_autoimport = 0
    let g:pymode_rope_complete_on_dot = 0

    " Key for show python documentation
    let g:pymode_doc_key = 'K'
    let g:pymode_folding = 0

Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'Glench/Vim-Jinja3-Syntax'

" Erlang and Elixir stuff
" Plug 'jimenezrick/vimerl'
Plug 'edkolev/erlang-motions.vim', {'for': ['erlang', 'elixir']}
Plug 'vim-erlang/vim-erlang-runtime', {'for': ['erlang', 'elixir']}
    let mapleader = ","
    " nmap <C-s> :ErlangTags<cr>:w<cr>
    " imap <C-s> <Esc>:ErlangTags<cr>:w<cr>

Plug 'vim-erlang/vim-erlang-compiler', {'for': ['erlang', 'elixir']}
    let g:erlang_quickfix_support = 1

Plug 'vim-erlang/vim-erlang-skeletons', {'for': ['erlang', 'elixir']}
Plug 'vim-erlang/vim-erlang-omnicomplete', {'for': ['erlang', 'elixir']}
Plug 'vim-erlang/vim-erlang-tags', {'for': ['erlang', 'elixir']}
Plug 'elixir-lang/vim-elixir', {'for': ['erlang', 'elixir']}

"JS & JSX (React)
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" Flutter & Dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

" Other stuff
Plug 'tsandall/vim-rego'
    let g:neoformat_rego_opa = {
      \ 'exe': 'opa',
      \ 'args': ['fmt'],
      \ 'stdin': 1,
      \ }

    let g:neoformat_enabled_rego = ['opa']

Plug 'sealemar/vtl'
Plug 'derekwyatt/vim-scala'
Plug 'vim-scripts/dbext.vim'
    let g:dbext_default_use_sep_result_buffer = 1

" Plug 'Textile-for-VIM'
Plug 'tpope/vim-fugitive'
Plug 'chrisbra/csv.vim', {'for': 'csv'}
Plug 'zhaocai/DirDiff.vim'
    let g:DirDiffExcludes = ".git, *.csv"
    let g:DirDiffIgnore = "AUTO_INCREMENT=[1-9]+"

" Plug 'mediawiki'
Plug 'slashmili/alchemist.vim'
Plug 'vim-scripts/mako.vim', {'for': 'mako'}
Plug 'ElmCast/elm-vim'
let g:elm_syntastic_show_warnings = 1
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1

Plug 'kbsymanz/ctags-elm', {'for': 'elm'}
Plug 'xavierchow/vim-swagger-preview', {'for': 'yaml'}

call plug#end()

" let g:python2_host_prog = '/usr/local/bin/python'
" let g:python3_host_prog = '/usr/local/bin/python3'
" let g:loaded_python_provider = 0
" let g:loaded_python3_provider = 0

" Autoreload vimrc
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" Highlight 80 col overflow
highlight ColorColumn ctermbg=magenta
"
" set colorcolumn=81
call matchadd('ColorColumn', '\%81v', 100)

" RU-EN Ctrl-^
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

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
"DbExt configuration

" Private data is in separate file out there
source ~/Private/private.vim
