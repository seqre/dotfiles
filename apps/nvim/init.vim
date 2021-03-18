" Flags
set nocompatible 	" no vi-compatibility
syntax on 		" syntax highlighting
set number		" line numbers
set relativenumber	" relative line numbers
set laststatus=2	" always show the status line at the bottom
set ignorecase		" makes search case-insensitive when all characters in the string being searched are lowercase
set smartcase
set incsearch		" searching during typing
set mouse+=a		" enable mouse support
set showmatch		" show matching braces when text indicator is over 
set hlsearch		" highlight matches

" Keyboard shortcuts
nnoremap ; :

" Prevent bad habits
" Do this in normal mode...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
" Syntax
Plug 'dense-analysis/ale'		" asynchronous lint engine
Plug 'scrooloose/nerdtree'		" file system explorer
Plug 'xuyuanp/nerdtree-git-plugin'	" git status flags for NERDTree
Plug 'tpope/vim-surround'		" surroundings
Plug 'tpope/vim-fugitive'		" git wrapper
Plug 'sheerun/vim-polyglot'		" collection of language packs
"Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'		" opening browser from vim
Plug 'tpope/vim-sensible'		" defaults
Plug 'weirongxu/plantuml-previewer.vim'	" plantuml previewe:
Plug 'vim-airline/vim-airline'		" statur/tabline
Plug 'valloric/youcompleteme'		" code-completion engine
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	" fuzzy finder
Plug 'junegunn/fzf.vim'
call plug#end()
