set noswapfile
set t_Co=256
set guitablabel=%N\ %t
set nocompatible
set incsearch
set showmatch
set smartindent
set autoindent
set background=dark
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround

set matchpairs+=<:>
"set iskeyword+=:
set cscopeprg=/usr/bin/cscope
set cscopetag
set cscopeverbose
set fileencodings=utf-8,latin1

set history=50
set hlsearch
set ruler
set viminfo='20,\"50
set undofile

set relativenumber
set number
set gdefault
syn on
filetype plugin on
set shell=/bin/zsh
set complete-=i
:colorscheme elflord

set wildmenu
set wildmode=longest:full
source $VIMRUNTIME/menu.vim
set wildcharm=<C-Z>

imap jk <Esc>:w<cr>
" Fast editing of the .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e ~/.vimrc<cr>
nnoremap <leader>sv :so ~/.vimrc<cr>
nnoremap <leader>st :Startify<cr>
nnoremap ; :
nnoremap : ;

noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

set splitbelow
set splitright

nnoremap <leader>, :w<cr>
nnoremap <leader>tn :tabnew .<cr>
nnoremap 'te :tabedit %<cr>
nnoremap 'tc :tabclose<cr>
nnoremap <leader>dp df)
nnoremap <leader><space> :noh<cr>
nnoremap <leader>v V`]
nnoremap <Space> @q
nnoremap <leader>em :emenu <C-Z>

imap #dd use Data::Dump 'pp'; die pp();

autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
