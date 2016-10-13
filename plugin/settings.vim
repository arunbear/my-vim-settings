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
map <F3> :emenu <C-Z>

imap jk <Esc>:w<cr>
" Fast editing of the .vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e ~/.vimrc<cr>
" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

nnoremap <leader>sv :so ~/.vimrc<cr>

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

imap sse $self->
imap <F1> ->
imap <F2> <Space>=><Space>
map <F3> :Tlist<CR>
map <F4> i$<ESC>
imap <F4> $_
imap <F5> $

map <F10> i_
imap <F10> {}<LEFT>
map #sw iuse strict;<CR>use warnings;<CR>use Data::Dumper;<CR>use Getopt::Long;<CR>
imap #du Dumper()
imap #su sub  {<CR>;<CR><Up><Up><RIGHT><RIGHT><RIGHT>
imap #me sub  {<CR>my ($self) = @_;<CR><Up><Up>
imap #dd use Data::Dump 'pp'; die pp();

autocmd VimEnter * call LoadSession()
autocmd VimLeave * call SaveSession()

function! SaveSession()
    execute 'mksession! $HOME/.vim/sessions/session.vim'
endfunction    

function! LoadSession()
    if argc() == 0
        execute 'source $HOME/.vim/sessions/session.vim'
    endif
endfunction    

autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif
