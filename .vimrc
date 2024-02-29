set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'tpope/vim-unimpaired'
"Plugin 'neoclide/coc.nvim'
call vundle#end()
filetype plugin indent on

set number
syntax on
set tabstop=4
set autoindent
set smartindent
set expandtab
set softtabstop=4
set shiftwidth=4
set novisualbell
set backspace=indent,eol,start
nnoremap 4 $a
nnoremap 5 %
nnoremap 6 ^i
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<cr> {<cr>};<esc>o
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<right>" : ")"
""inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<right>" : "]"
""inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<right>" : "}"
set pastetoggle=<F5>

set visualbell
"map <Enter> o<ESC>
"map <S-Enter> O<ESC>
inoremap <c-l> <esc>la
inoremap <c-l> <right>

" Set delete to delete, not cut
"nnoremap x "_x
"nnoremap d "_d
"nnoremap D "_D
"vnoremap d "_d

"nnoremap <leader>d ""d
"nnoremap <leader>D ""D
"vnoremap <leader>d ""d

" Set d to delete
nnoremap <leader>d "_d
xnoremap <leader>d "_d

nnoremap <leader>c "_c
xnoremap <leader>c "_c

nnoremap <leader>y "*y
xnoremap <leader>y "*y

xnoremap <leader>p "_dP

set whichwrap+=<,h
set whichwrap+=>,l
set whichwrap+=[,]

set noerrorbells
set mouse=a
set title
set clipboard=unnamedplus
autocmd FileType java setlocal omnifunc=javacomplete#Complete
set completeopt=longest,menuone
set omnifunc=syntaxcomplete#Complete

:let g:unison_api_port = 6789
:let g:unison_api_token = 'local_ucm'

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Plugin for unison
Plug 'unisonweb/unison', { 'branch': 'trunk', 'rtp': 'editor-support/vim' }

" Plugin for theme
Plug 'NLKNguyen/papercolor-theme'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
" Set theme
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
colorscheme PaperColor

