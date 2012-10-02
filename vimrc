" Install new bundles with 'vim +BundleInstall +qall'
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on     " required!

nnoremap <silent> <F2> :NERDTreeToggle<cr>
inoremap <silent> <F2> <ESC>:NERDTreeToggle<cr>
vnoremap <silent> <F2> <ESC>:NERDTreeToggle<cr>

set autoindent
set autoread
set expandtab
set history=500
set magic
set number
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4
set tw=0
set formatoptions=l
set lbr

let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1

nnoremap nt :tabe <CR>
nnoremap ZW :w <CR>
nnoremap H :tabp <CR>
nnoremap L :tabn <CR>

nnoremap <Leader>i :set smartindent!<CR>:set autoindent!<CR>
nnoremap <Leader>c :set ignorecase!<CR>

nnoremap <Leader>g :Gist<CR>

highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\t\|\s\+\%#\@<!$/
autocmd InsertLeave * redraw!
