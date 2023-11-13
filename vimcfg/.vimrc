syntax on 

set number

filetype on 
filetype plugin on 

set autoindent
filetype indent on 
set expandtab 
set tabstop=4 
set shiftwidth=4 

set runtimepath^=~/.vim/bundle/vim-airline 
set runtimepath^=~/.vim/bundle/nerdtree 
set runtimepath^=~/.vim/bundle/vim-airline-themes 

let g:airline_theme='dark' 
let g:airline_powerline_fonts = 1 

set completeopt-=preview 

nnoremap <C-n> :NERDTree<CR> 
nnoremap <silent> <C-j> :below term ++rows=10 <CR>
nnoremap <silent> <C-k> :below term ++rows=100 <CR>
nnoremap <silent> <C-l> :below vertical term ++cols=52 <CR>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
