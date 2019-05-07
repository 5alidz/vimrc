set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'valloric/youcompleteme'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'prettier/vim-prettier'
Plugin 'rust-lang/rust.vim'
Plugin 'yggdroot/indentline'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'leshill/vim-json'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-repeat'
Plugin 'BufOnly.vim'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Quramy/vim-js-pretty-template'
"Plugin 'scrooloose/syntastic'
"Plugin 'roxma/nvim-yarp'
"Plugin 'shougo/deoplete.nvim'
"Plugin 'Quramy/tsuquyomi'
"Plugin 'ianks/vim-tsx'
"Plugin 'leafgarland/typescript-vim'
"Plugin 'kyuhi/vim-emoji-complete'
"Plugin 'digitaltoad/vim-pug'
"Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'cespare/vim-toml'
"Plugin 'racer-rust/vim-racer'
"Plugin 'fatih/vim-go'
filetype plugin indent on

" Use deoplete.
let g:deoplete#enable_at_startup = 1

syntax enable
set encoding=utf-8
set linebreak
set laststatus=2
set lazyredraw
set number
set relativenumber
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set incsearch
set clipboard=unnamed
set wildmenu
set hlsearch
set breakindent
set formatoptions=l
set lbr
set confirm
set dir=~/.cache/vim
set noswapfile
set wildignore+=.pyc,.swp
set nobackup
set nowritebackup
nnoremap j gj
nnoremap k gk
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:jsx_ext_required = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_c_checkers = ['cppcheck', 'make']

let g:rust_recommended_style = 0

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:indentLine_char = '|'
let g:indentLine_color_term = 238

let g:airline#extensions#tabline#enabled = 1

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_rust_src_path = '~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

let NERDTreeShowHidden=1
let g:NERDTreeIgnore=['^node_modules$', '^\.next$', '^\.git$', '^\.cache$', '^dist$', '^package-lock\.json$']
:let g:NERDTreeWinSize=20

let g:go_version_warning = 0

let g:prettier#config#semi = 'false'

let g:user_emmet_settings = {
\  'html': {
\    'snippets': {
\      'html:5': '!!!+html[lang=en]>(head>meta:compat+meta:utf+meta:vp+meta[charset=${charset}]+title{${1:Document}})+body[dir=ltr]'
\	}
\    }
\ }

let g:ale_sign_column_always = 1
let g:ale_cpp_gcc_options = '-std=c++17'
let b:ale_linters = {'cpp': ['cppcheck']}

colo Monokai

autocmd BufRead,BufNewFile * syn match parens /[()=>{}]/ | hi parens ctermfg=cyan
autocmd BufRead,BufNewFile * syn match parens /[(){}]/ | hi parens ctermfg=cyan
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
