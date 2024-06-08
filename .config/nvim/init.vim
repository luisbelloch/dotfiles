set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.config/nvim/plugged')
Plug 'LnL7/vim-nix'
Plug 'ledger/vim-ledger'
" Plug 'jparise/vim-graphql'
" Plug 'nvim-tree/nvim-web-devicons'
" Plug 'nvim-tree/nvim-tree.lua'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug '/usr/local/opt/fzf'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'rust-lang/rust.vim'

" colorthemes
Plug 'nyoom-engineering/oxocarbon.nvim'
Plug 'baskerville/bubblegum'
" Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
call plug#end()

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-b> <cmd>Telescope buffers<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" set termguicolors
" set background=dark
" colorscheme tomorrow

