" -----------------------------------------------------------------------------
"  plugins
" -----------------------------------------------------------------------------
call  plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive' " git client (haven't looked at this yet)
Plug 'kien/ctrlp.vim' " fuzzy finder
Plug 'vim-airline/vim-airline' " information bar
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot' " can help fix issues with onedark in some cases
Plug 'w0rp/ale' " eslint

call plug#end()
" -----------------------------------------------------------------------------
"  caching
" -----------------------------------------------------------------------------
set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir " undo files go here
set undofile " every file will have an undo save file

" -----------------------------------------------------------------------------
"  search
" -----------------------------------------------------------------------------
set ignorecase
set incsearch " will search document as you type

" -----------------------------------------------------------------------------
"  eslint configs
" -----------------------------------------------------------------------------
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1

" -----------------------------------------------------------------------------
"  spacing
" -----------------------------------------------------------------------------
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent " will attempt to indent correctly

" -----------------------------------------------------------------------------
"  visuals
" -----------------------------------------------------------------------------
syntax on

set cursorline " adds a grey line on the current line
set termguicolors " enables truecolor
let g:onedark_terminal_italics=1 " enables italics for some elements

let g:airline_theme='onedark' " changes the theme for airline
colorscheme onedark

set noshowmode " makes mode hidden so only airline is visible

set colorcolumn=80 " adds gray column for line wrapping

" -----------------------------------------------------------------------------
"  line number configurations
" -----------------------------------------------------------------------------
set ruler

set number relativenumber " shows relative numbers with current line actual line number
:augroup numbertoggle " switch to actual line numbers in insert mode
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END


let mapleader=" " " change leader key to be space bar

" -----------------------------------------------------------------------------
"  ctrlp configs
" -----------------------------------------------------------------------------
let g:ctrlp_use_caching=0 " disable cachine for ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" -----------------------------------------------------------------------------
"  window configs/remappings
" -----------------------------------------------------------------------------
set splitbelow splitright " makes new splits open to bottom or right by default

" change current buffer with leader hjkl
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" -----------------------------------------------------------------------------
"  randome remappings
" -----------------------------------------------------------------------------
imap jk <Esc> " you can press j followed by k instead of Esc

