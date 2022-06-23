" --- General 

let mapleader = ","

set termguicolors
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=1
set relativenumber
set signcolumn=yes
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=999
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a
set clipboard+=unnamedplus


" --- Plugins

call plug#begin('~/.config/nvim/plugged')

" General
Plug 'nvim-lualine/lualine.nvim'                   " Status line
Plug 'windwp/nvim-autopairs'                        " Auto pairing of brackets

" Color schemes
Plug 'danilo-augusto/vim-afterglow'                 " Afterglow color scheme

" Lsp
Plug 'neovim/nvim-lspconfig'     
Plug 'harsh7th/nvim-compe'

call plug#end()

lua require('afrid-macbook')


" --- Colors

set background=dark
" Afterglow contrast setting
let g:afterglow_blackout=1
colorscheme afterglow


" --- Remaps

nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
nnoremap <silent><leader>[ :BufferLineCyclePrev<Cr>
nnoremap <silent><leader>] :BufferLineCycleNext<Cr>
nnoremap <silent><leader>q :bdelete<Cr>


" --- Autocommands

" Remove vert split 
" https://www.reddit.com/r/vim/comments/effwku/transparent_vertical_bar_in_vim/
" https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f
set fillchars=vert:\  " there is whitespace after the backslash
augroup RemoveVertSplit
    autocmd!
    autocmd BufEnter,ColorScheme * highlight VertSplit ctermfg=1 ctermbg=None cterm=None
augroup END