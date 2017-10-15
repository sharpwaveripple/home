call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'ajh17/VimCompletesMe'
Plug 'jalvesaq/Nvim-R'
Plug 'kien/ctrlp.vim'
Plug 'ajmwagar/vim-deus'
call plug#end()

set number
set clipboard=unnamed
set mouse=a
nnoremap <esc> :noh<return><esc>
imap jj <Esc>
set background=dark
colors deus
let g:airline_theme='deus'

" switch tabs easily
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
let g:airline#extensions#tabline#enabled = 1
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
let g:NERDTreeWinPos = "right" " open NERDTree right
"let g:NERDTreeWinSize = 20 " open NERDTree right
autocmd VimEnter * NERDTree " launch NERDTree on start
autocmd VimEnter * wincmd p  " start cursor in editor
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close NERDTree if script closes

set tabstop=4 " tab is 4 spaces
set softtabstop=4 " backspace removes a tab
set shiftwidth=4
set textwidth=79

au BufNewFile,BufRead *.R,*.sh
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
