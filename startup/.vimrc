call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree'
Plug 'maralla/completor.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
" Plug 'miyakogi/flyjedi.vim'
Plug 'jalvesaq/Nvim-R'
Plug 'junegunn/fzf'
Plug 'ajmwagar/vim-deus'
Plug 'flazz/vim-colorschemes'
Plug 'easymotion/vim-easymotion'
Plug 'w0rp/ale'
call plug#end()

autocmd FileType help setlocal number
set number
set relativenumber
set clipboard=unnamed

" clear highlighting with esc
" nnoremap <esc> :noh<return><esc>

" use jk to exit insert mode
imap jk <Esc>

set background=dark
colors deus
let g:airline_theme='deus'

" switch between splits easily
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Use the space key to toggle folds
nnoremap <space> za
vnoremap <space> zf

" fuzzy finding with ctrl-p
nnoremap <C-p> :FZF<CR>

" move between buffers with tab
nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bp<CR>

nmap j gj
nmap k gk

set autowrite

let g:airline#extensions#tabline#enabled = 1
" let g:deoplete#enable_at_startup = 1

" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" let g:completor_python_binary='/home/sharpwaveripple/anaconda/lib/python3.6/site-packages/jedi/'

let g:airline_left_sep=''
let g:airline_right_sep=''
let g:jedi#completions_enabled = 1
let g:jedi#show_call_signatures_delay = 100
autocmd FileType python setlocal completeopt-=preview
let g:NERDTreeWinPos = "left" " open NERDTree right
let NERDTreeShowLineNumbers = 1
" let g:airline_powerline_fonts = 1
" let g:NERDTreeWinSize = 20 " open NERDTree right
autocmd VimEnter * NERDTree " launch NERDTree on start
autocmd VimEnter * wincmd p  " start cursor in editor
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close NERDTree if script closes

set tabstop=4 " tab is 4 spaces
set softtabstop=4 " backspace removes a tab
set shiftwidth=4
set textwidth=79

let R_assign_map = "--"
let R_rconsole_width = 1000
let R_min_editor_width = 80
let R_show_args = 2

au BufNewFile,BufRead *.R,*.sh
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
