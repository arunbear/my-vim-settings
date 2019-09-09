call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'

Plug 'mhinz/vim-startify'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'

Plug 'jremmen/vim-ripgrep'

Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-line'
Plug 'michaeljsmith/vim-indent-object'
Plug 'christoomey/vim-sort-motion'
Plug 'vim-scripts/ReplaceWithRegister'
" Plug Bundle 'christoomey/vim-titlecase'

Plug 'christoomey/vim-system-copy'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

Plug 'arunbear/repl.vim'
Plug 'idris-hackers/idris-vim'
Plug 'wlangstroth/vim-racket'
Plug 'elixir-editors/vim-elixir'

Plug 'srstevenson/vim-picker'
Plug 'vim-airline/vim-airline'
Plug 'Raimondi/vim_search_objects'

" Initialize plugin system
call plug#end()

source ~/.vimrc.extra
