set nocompatible
set hidden
set mouse=a
set noswapfile

syntax on
filetype plugin indent on
set encoding=utf-8
set guifont=SF\ Mono:h14
" set guifont=Source\ Code\ Pro\ Light:h12

set guioptions-=r " right scrollbar
set guioptions-=L " left scrollbar

set tabstop=4
set softtabstop=4
set shiftwidth=4
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

let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>m :make<CR>
nnoremap <leader>g :TagbarToggle<CR>
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

autocmd FileType python map <leader>r :w<cr>:!python %<cr>

let g:user_emmet_leader_key='<C-E>'

let go_highlight_extra_types=1
let go_highlight_space_tab_error=1
let go_highlight_trailing_whitespace_error=1

autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType python setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType proto setlocal tabstop=2 shiftwidth=2 softtabstop=2

autocmd FileType go setlocal noexpandtab
autocmd FileType go setlocal tabstop=4
let g:go_disable_autoinstall = 0

autocmd BufEnter Makefile setlocal noexpandtab

au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/*,nginx*conf if &ft == '' | setfiletype nginx | endif 

set omnifunc=syntaxcomplete#Complete
autocmd FileType go compiler go

" Color scheme
set t_Co=256
colorscheme tomorrow
" hi Search term=reverse cterm=reverse gui=reverse ctermfg=237

" CTRLP
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules|bower_components)$',
  \ 'file': '\v\.(exe|so|dll)$'
  \ }


let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }
