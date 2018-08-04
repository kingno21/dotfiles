set number
set nocompatible
syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')

" Utils
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " tree dir
Plug 'rking/ag.vim' " silver search
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'tomtom/tcomment_vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/AnsiEsc.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'flazz/vim-colorschemes'

Plug 'kchmck/vim-coffee-script'
Plug 'Chiel92/vim-autoformat'
Plug 'rhysd/nyaovim-markdown-preview'
Plug 'rhysd/nyaovim-popup-tooltip'
Plug 'slim-template/vim-slim'
Plug 'edkolev/tmuxline.vim'
Plug 'danro/rename.vim'
Plug 'othree/xml.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive' " git wrapper

" rails
Plug 'tpope/vim-rails'

" JS typescript
Plug 'leafgarland/typescript-vim'

Plug 'mbbill/undotree' " undotree
Plug 'kaicataldo/material.vim' " metarial theme
Plug 'junegunn/vim-easy-align' " easy align
Plug 'palantir/tslint' " tslint
Plug 'mxw/vim-jsx' " jsx
call plug#end()


" nerd tree
map <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * lcd %:p:h

" Auto insert
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" add branch
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set statusline+=%{fugitive#statusline()}

hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE

" airline theme
let g:airline_theme='bubblegum'

" markdown
let g:markdown_preview_auto=1

" clipboard
set clipboard+=unnamedplus

" fix size
let NERDTreeWinSize=20

set switchbuf+=usetab,newtab


" tmux + vim
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_powerline_separators = 0

let g:tmuxline_preset = {
  \'a'    : '#S',
  \'win'  : ['#I', '#W'],
  \'cwin' : ['#I', '#W', '#F'],
  \'y'    : ['%R', '%a', '%Y'],
  \ }

" custom map
noremap <Space>h  ^
noremap <Space>l  $
nnoremap ZZ <Nop>
nnoremap ZQ <Nop>
nnoremap Q <Nop>

" xml edit
let g:xml_namespace_transparent=1
set encoding=utf-8

" Config syntax
au BufRead,BufNewFile Podfile set filetype=ruby

" MD Preview
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" set undo
set undofile
set undodir=~/.vim/undodir
nnoremap <C-i> :UndotreeToggle<cr>

set tabstop=2
set expandtab
set shiftwidth=2
set list

" vim theme material
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

let g:maierial_theme_style = 'dark'
let g:airline_theme = 'material'

set background=dark
colorscheme material

let mapleader = " "

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
