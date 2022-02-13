set nocompatible              " be iMproved, required
filetype off                  " required
set noswapfile
" set spell check and dictionary autocomplete for markdown
autocmd FileType markdown setlocal spell 
autocmd FileType html setlocal spell 
autocmd FileType markdown setlocal complete+=k
set relativenumber

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set list
set listchars=tab:.\ ,trail:•,extends:#,nbsp:.

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim wiki 
Plugin 'vimwiki/vimwiki'

" colorscheme
" Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'dylanaraps/wal.vim'


" Javascript
Plugin 'pangloss/vim-javascript'
"
" vue language 
Plugin 'posva/vim-vue'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'


" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" I commented this out because i don't have vim compiled ruby so it won't work anyway
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set encoding=utf-8
set fileencoding=utf-8
set wrap
set linebreak
set nolist
set shiftwidth=2
set smarttab
set softtabstop=2
set tabstop=2
colorscheme wal
set smartcase
hi Normal guibg=NONE ctermbg=NONE

" remap capital to lower letters for common mistaken commands. doesn't change
" default behavior but avoids mistakes
:command WQ wq
:command Wq wq
:command W w
:command Q q
