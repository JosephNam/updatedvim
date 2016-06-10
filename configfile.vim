set nocompatible              " be iMproved, required
filetype off                  " required

let g:python_host_prog = '/usr/local/opt/python/bin/python2.7'
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
set laststatus=2
let g:airline#extensions#whitespace#enabled = 0
Plugin 'mxw/vim-jsx'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'lambdatoast/elm.vim'
Plugin 'xolox/vim-misc'
Plugin 'leafgarland/typescript-vim'
Plugin 'ervandew/supertab'
Plugin 'raichoo/purescript-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'derekwyatt/vim-scala'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Shutnik/jshint2.vim'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
call vundle#end()
filetype plugin indent on

syntax enable

set number
set relativenumber

set expandtab
set ts=2
set shiftwidth=2

set termguicolors
set autoindent

set shiftwidth=2

set cursorline

set showmatch

set backspace=2

colorscheme anderson

"make tab and shift tab behave like tabs in other ides""
vmap <Tab> >gv
vmap <S-Tab> <gv


"remaping esc to also function with jk""
imap jk <Esc>

"remap j and k for virtual line editing"
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

"abbreviations""
ab sop System.out.println
ab psvm public static void main


au FileType coffee setl sw=2 sts=2 et

let g:indent_guides_start_level=2

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <C-O> :NERDTreeTabsToggle<ENTER>

let g:deoplete#enable_at_startup = 1

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 1

