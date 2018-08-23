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

" Initialize plugin system
call plug#end()

" Turn off vi compatibility
set nocompatible

set smartindent
set autoindent

" load indent file for the current filetype
filetype indent on

let g:rufo_auto_formatting = 1

" The go plugin doesn't work right on old VIMs (like on Dreamhost). This makes
" the error go away
let g:go_version_warning = 0
