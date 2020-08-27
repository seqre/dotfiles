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

call plug#begin()
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'aklt/plantuml-syntax'
Plug 'tyru/open-browser.vim'
Plug 'weirongxu/plantuml-previewer.vim'
call plug#end()
