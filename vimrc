" download the vim-plug plugin
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Config for vim-plug
"
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }	" Go support
Plug 'gabrielelana/vim-markdown'			" Markdown syntax highlighting
Plug 'itchyny/lightline.vim'				" Fancy status line
"Plug 'junegunn/vim-github-dashboard'
Plug 'junegunn/vim-easy-align'
"Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'					" gruvbox theme
Plug 'python-mode/python-mode', { 'branch': 'develop' }	" Python support
Plug 'ruby-formatter/rufo-vim'				" Ruby support
Plug 'rust-lang/rust.vim'				" Rust support
Plug 'scrooloose/nerdtree'				" Tree view
Plug 'sudar/vim-arduino-syntax'				" Arduino support
Plug 'tpope/vim-fugitive'				" git helper
"Plug 'valloric/youcompleteme'
Plug 'vim-ruby/vim-ruby'				" More Ruby support?
Plug 'vim-syntastic/syntastic'				" Syntax support for lots of languages
"Plug 'glench/vim-jinja2-syntax'                         " Jinja2 templates
Plug 'lepture/vim-jinja'                                " maybe...
Plug 'github/copilot.vim'
call plug#end()

" Turn off vi compatibility
set nocompatible

set nobackup
set nowritebackup
set noswapfile

set ruler

set autoread

set smartindent
set autoindent

" needed by lightline
set laststatus=2
set noshowmode

set mouse=a
set cmdheight=2

set notitle

" load indent file for the current filetype
filetype indent on
filetype plugin indent on

" tweaks to the arduino plugin settings
au FileType arduino set tabstop=2
au FileType arduino set shiftwidth=2
au FileType arduino set expandtab

let g:rufo_auto_formatting = 1

" The go plugin doesn't work right on old VIMs (like on Dreamhost). This makes
" the error go away
let g:go_version_warning = 0

" For some reason, the md plugin turns spellcheck on
let g:markdown_enable_spell_checking = 0

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" colors
syntax enable
set background=light
colorscheme gruvbox

" recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
