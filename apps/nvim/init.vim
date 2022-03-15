"""""""""
" Flags "
"""""""""

" No vi-compatibility
set nocompatible

" Line numbers
set number

" Relative line numbers
set relativenumber

" Always show the status line at the bottom
set laststatus=2

" Makes search case-insensitive when all characters in the string being searched are lowercase
set ignorecase

set smartcase

" Search while typing
set incsearch

" Enable mouse support
set mouse+=a

" Show matching braces when text indicator is over
set showmatch

" Highlight matches
set hlsearch

" Explicitly use UTF-8 if not in NeoVim
if !has('nvim')
  set encoding=UTF-8
endif


""""""""""""""""""""""
" Prevent bad habits "
""""""""""""""""""""""

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


""""""""""""
" vim-plug "
""""""""""""

" Install vim-plug if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync | source $MYVIMRC
      \| endif


"""""""""""""""
" VIM plugins "
"""""""""""""""

call plug#begin()

" vim-plug itself
Plug 'junegunn/vim-plug'

" VIM defaults
Plug 'tpope/vim-sensible'

" Git wrapper
"Plug 'tpope/vim-fugitive'

" Comment stuff out
"Plug 'tpope/vim-commentary'

" NERDTree - a file system explorer
Plug 'scrooloose/nerdtree' ", { 'on': 'NERDTreeToggle' }

" NERDTree git status flags
Plug 'xuyuanp/nerdtree-git-plugin' ", { 'on': 'NERDTreeToggle' }

" NERDTree filetype-specific icons
"Plug 'ryanoasis/vim-devicons'

" NERDTree syntax highlighting
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Asynchronous lint engine
Plug 'dense-analysis/ale'

" Code-completion engine
Plug 'ycm-core/YouCompleteMe', { 'do': 'python3 install.py --all' }

" Surroundings (parentheses, brackets, quotes, and more)
"Plug 'tpope/vim-surround'

" Tag browser
Plug 'preservim/tagbar'

" Statusline/tabline
Plug 'itchyny/lightline.vim'

" Git diff status in the sign column
Plug 'airblade/vim-gitgutter'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Emmet abbreviations expansion
" Plug 'mattn/emmet-vim'

" Visual display of indent levels
Plug 'yggdroot/indentline'

" Snippets
" Plug 'SirVer/ultisnips'

" Default snippets
" Plug 'honza/vim-snippets'

" Collection of language packs
Plug 'sheerun/vim-polyglot'

" Used for formatting tables in Markdown
Plug 'godlygeek/tabular'

" Code formatting
Plug 'chiel92/vim-autoformat'

" To consider in future:
" - colorscheme

" Kitty config coloring
Plug 'fladson/vim-kitty'

" Pywal compatibility
Plug 'dylanaraps/wal.vim'
call plug#end()

colorscheme wal

let g:ale_linters = {'haskell': ['cabal_ghc', 'ghc_mod', 'hdevtools', 'hie', 'hlint', 'stack_build', 'stack_ghc']}

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Format code on saving
"au BufWrite * :Autoformat
