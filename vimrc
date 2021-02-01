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

" Make sure you use single quotes
"
"
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'vim-ruby/vim-ruby'
Plug 'ruby-formatter/rufo-vim'
Plug 'gabrielelana/vim-markdown'
Plug 'itchyny/lightline.vim'
Plug 'micha/vim-colors-solarized'
Plug 'rust-lang/rust.vim'
Plug 'sudar/vim-arduino-syntax'

" Initialize plugin system
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

" config for vim-colors-solarized
syntax enable
set background=light
colorscheme solarized
