set nocompatible
set hidden
set mouse=a
set noswapfile
set backspace=indent,eol,start

syntax on
filetype plugin indent on
set encoding=utf-8
set guifont=SF\ Mono:h16

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set number
set showcmd
set ruler
set nowrap

set wildmenu

set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase

set clipboard+=unnamedplus

let mapleader=","
nnoremap <leader><space> :nohlsearch<cr>
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>m :make <c-r>=expand('%:t:r')<cr><cr>
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

if has("autocmd")
filetype on
autocmd FileType make setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 noexpandtab
autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
autocmd FileType go compiler go
autocmd FileType python map <leader>r :w<cr>:!python %<cr>
autocmd FileType ruby map <leader>r :w<cr>:!ruby %<cr>
autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
autocmd BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,nginx*conf if &ft == '' | setfiletype nginx | endif
autocmd BufRead,BufNewFile *.csv set filetype=csv
autocmd FileType csv setlocal commentstring=#\ %s
endif

set omnifunc=syntaxcomplete#Complete

" Color scheme
" set t_Co=256
set termguicolors
set background=dark
" colorscheme tomorrow
colorscheme ground 
" hi Search term=reverse cterm=reverse gui=reverse ctermfg=237

" CTRLP
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules|bower_components)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

" Ack
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

let g:ackprg = 'rg --vimgrep --no-heading'

