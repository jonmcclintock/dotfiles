let g:python_host_prog  = '/home/jonm/env/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

let python_highlight_all=1
let python_slow_sync=1

call plug#begin('~/.vim/plugged')
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

Plug 'vim-airline/vim-airline'

" Language support
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'bluz71/vim-moonfly-colors'
Plug 'chriskempson/base16-vim'
call plug#end()

syntax enable
set t_Co=256
 
set modeline
set autoindent
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set wildmode=longest,list
set cursorline                    " highlight the current line for the cursor
set title
set noerrorbells
set colorcolumn=81
set list
set listchars=tab:\|\ ,trail:▫
set number

set background=dark
colorscheme molokai

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default': {
  \       'transparent_background': 1
  \     }
  \   }
  \ }
highlight Search guibg=DeepPink4 guifg=White ctermbg=53 ctermfg=White
"let g:molokai_original=1
"let g:rehash256=1

"----------------------------------------------
" Plugin: ale
"----------------------------------------------
" Error and warning signs.
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '?'
let g:ale_sign_column_always = 1

"----------------------------------------------
"----------------------------------------------
" Plugin: bling/vim-airline
"----------------------------------------------
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

" Show status bar by default.
set laststatus=2

" Enable top tabline.
let g:airline#extensions#tabline#enabled = 1

" Disable showing tabs in the tabline. This will ensure that the buffers are
" what is shown in the tabline at all times.
let g:airline#extensions#tabline#show_tabs = 0

" Enable powerline fonts.
let g:airline_powerline_fonts = 0

"----------------------------------------------
" Language: go
"----------------------------------------------

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1

let g:go_fmt_command = "goimports"

"----------------------------------------------
" Language: gitcommit
"----------------------------------------------
au FileType gitcommit setlocal spell
au FileType gitcommit setlocal textwidth=80

"----------------------------------------------
" Language: Python
"----------------------------------------------
au FileType python set expandtab
au FileType python set shiftwidth=4
au FileType python set softtabstop=4
au FileType python set tabstop=4

" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
