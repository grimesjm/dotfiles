" Plugins
" Create a horizontal split at the bottom when installing plugins
let g:plug_window = 'botright new'

let g:plug_dir = expand('~/.vim/bundle')
call plug#begin(g:plug_dir)
Plug 'bling/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'tomasiser/vim-code-dark'
Plug 'ekalinin/dockerfile.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'hdima/python-syntax'
Plug 'fatih/vim-go'
Plug 'pearofducks/ansible-vim'
Plug 'rust-lang/rust.vim'

call plug#end()

syntax enable
set background=dark

set enc=utf-8
set guifont=Powerline_Consolas:h11
set renderoptions=type:directx,gamma:1.5,contrast:0.5,geom:1,renmode:5,taamode:1,level:0.5
let g:airline_theme = 'codedark'
silent! colorscheme codedark
set autoindent
set tabstop=2                " Display tabs as 2 spaces
set softtabstop=2             " Use four spaces for tabs when editing
set shiftwidth=2
set expandtab                 " Convert tabs into spaces

set showmatch                 " Match opening and closing parantheses, braces, etc.

" Don't make backups at all
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" if a file is changed outside of vim, automatically reload it without asking
set autoread

filetype indent on            " load filetype-specific indent files
