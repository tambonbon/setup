set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'artur-shaik/vim-javacomplete2'
call vundle#end()
filetype plugin indent on

set number
syntax on
colorscheme elflord 
set tabstop=4
set cindent
set expandtab
set softtabstop=4
set novisualbell
set backspace=indent,eol,start
nnoremap 4 $a
nnoremap 5 %
nnoremap 6 ^i
"inoremap " ""<left>
"inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<cr> {<cr>};<esc>o
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<right>" : ")"
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<right>" : "]"
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<right>" : "}"
set visualbell
"map <Enter> o<ESC>
"map <S-Enter> O<ESC>
inoremap <c-l> <esc>la
inoremap <c-l> <right>
set noerrorbells
set mouse=a
set title
autocmd FileType java setlocal omnifunc=javacomplete#Complete
set completeopt=longest,menuone
