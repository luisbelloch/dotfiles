set nocompatible
set hidden
set mouse=a
set noswapfile
set backspace=indent,eol,start

syntax on
filetype plugin indent on
set encoding=utf-8
set guifont=SF\ Mono:h16
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
" set shortmessage-=S

let mapleader=","
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>r :NERDTreeFind<cr>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>m :make <c-r>=expand('%:t:r')<CR><CR>
nnoremap <leader>g :TagbarToggle<CR>
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>

autocmd FileType python map <leader>r :w<cr>:!python3 %<cr>
autocmd FileType ruby map <leader>r :w<cr>:!ruby %<cr>

let g:syntastic_python_python_exec = '/usr/local/bin/python3'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

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

au BufRead,BufNewFile *.csv set filetype=csv
autocmd FileType csv setlocal commentstring=#\ %s

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

" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

autocmd FileType markdown nnoremap <leader>c :ToggleCheckbox<cr>

" Ack
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

let g:ackprg = 'rg --vimgrep --no-heading'

" Tagbar
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
