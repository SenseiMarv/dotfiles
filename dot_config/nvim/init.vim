" General settings
set noswapfile " Disable swapfile

" Editor settings
syntax on " Enable syntax highlighting
set number " Enable line numbers
set spell spelllang=en_us
set incsearch " Enable search on typing
set ignorecase " Disable case sensitive search
set hlsearch " Enable highlighting of all search results

" Plugin installations
" Automatic installation of plugin manager
if empty(glob(stdpath('data') . '/site/autoload/plug.vim'))
  silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif
" Automatic installation of plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'

call plug#end()

" Plugin settings
if (has("termguicolors"))
  set termguicolors
endif
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
colorscheme onedark
