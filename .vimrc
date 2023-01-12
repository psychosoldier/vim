" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
set nocompatible
filetype off " plugin indent on
set title

" set runtime path
set rtp+=~/.vim/bundle/Vundle.vim

" call Vundle / Vundle para administrar plugins 
call vundle#begin()

" add plugins / plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'tpope/vim-surround'
" Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-fugitive'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'xuyuanp/nerdtree-git-plugin'
" Plugin 'dense-analysis/ale'
" Plugin 'puremourning/vimspector'


" end Vundle
call vundle#end()
filetype plugin indent on
set title

" environment
syntax on
set hlsearch
set number
set ruler
set mouse=a
set noerrorbells
set novisualbell
set spell spelllang=en_us
" set noswapfile
" set nobackup

" tabbing
set autoindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:\ \ ,trail:·


" plugin configurations
autocmd VimEnter * NERDTree 
" | wincmd p
let NERDTreeQuitOnOpen=1
nmap <F8> :TagbarToggle<CR>
" nmap <F5> <Plug>VimspectorContinue<CR>
" nmap <F6> <Plug>VimspectorStop<CR>

" syntax on

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
