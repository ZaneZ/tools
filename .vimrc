" Use Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'fatih/vim-go'

" JShint
" Plugin "wookiehangover/jshint"

" Powerline
Plugin 'bling/vim-airline'

" Autocompletion
Bundle 'Valloric/YouCompleteMe'

" Tern for vim
Bundle 'marijnh/tern_for_vim'

" Linters
Bundle 'scrooloose/syntastic'

" Autosave, mostly for live syntax with syntastic
Bundle '907th/vim-auto-save'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Configure the Color
set t_Co=256
syntax on
set background=dark
" colorscheme distinguished
colorscheme basic-dark
set encoding=utf-8
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set showmatch
set softtabstop=4
set ruler
set smarttab
filetype indent on
set scrolloff=0
"set nowrap
set ls=2
set colorcolumn=80
set incsearch
set gdefault
set ignorecase
set history=1000
set undolevels=1000
set nobackup
set wildmenu
" set textwidth=79
set wrap linebreak nolist
set backspace=indent,eol,start

" ======= Map Keyes =======
imap jk <esc>

" ======= YouCompleteMe ========
" http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" ======== Tern ========
nnoremap <leader>tt :TernType<cr>
nnoremap <leader>td :TernDef<cr>
nnoremap <leader>ts :TernDefSplit<cr>
nnoremap <leader>tp :TernDefPreview<cr>
nnoremap <leader>tn :TernRename<cr>
nnoremap <leader>tu :TernRefs<cr>

" ======== Syntastic ========
" let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list = 1

" ======== vim-auto-save ========
let g:auto_save = 0  " disable AutoSave on Vim startup
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
let g:auto_save_events = ["TextChanged"]
let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option"

" ======= Go-lang =============
" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1  
