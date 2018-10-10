set number
set nocompatible
syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')

" Utils
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " tree dir
Plug 'rking/ag.vim' " silver search
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-endwise'
Plug 'tomtom/tcomment_vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'yggdroot/indentline'
Plug 'vim-scripts/AnsiEsc.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

Plug 'kchmck/vim-coffee-script'
Plug 'Chiel92/vim-autoformat'
Plug 'slim-template/vim-slim'
Plug 'edkolev/tmuxline.vim'
Plug 'danro/rename.vim'
Plug 'othree/xml.vim'
Plug 'mattn/emmet-vim'
Plug 'easymotion/vim-easymotion'

Plug 'simeji/winresizer' " window resize
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter' " git
Plug 'tpope/vim-fugitive' " git wrapper
Plug 'tpope/vim-rails' " rails
Plug 'leafgarland/typescript-vim' " JS typescript
Plug 'mbbill/undotree' " undotree
Plug 'kaicataldo/material.vim' " metarial theme
Plug 'junegunn/vim-easy-align' " easy align
Plug 'palantir/tslint' " tslint
Plug 'mxw/vim-jsx' " jsx
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] } " javascript
Plug 'othree/yajs.vim' " react js
Plug 'othree/es.next.syntax.vim' " es syntax js
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/html5.vim' " html5 syntax
Plug 'maxmellon/vim-jsx-pretty' " vim jsx syntax
Plug 'scrooloose/syntastic' " syntax check for all lang
Plug 'majutsushi/tagbar' " tagbars
Plug 'w0rp/ale' " linting for lang
Plug 'elzr/vim-json' " json syntax
Plug 'xuyuanp/nerdtree-git-plugin' " addons
Plug 'isruslan/vim-es6' " es6 highlight
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }
Plug 'drewtempelmeyer/palenight.vim',
Plug 'Valloric/YouCompleteMe',
Plug 'mhinz/vim-startify',
Plug 'mhinz/vim-signify',
Plug 'fatih/vim-go',
Plug 'stephpy/vim-yaml',
Plug 'ap/vim-css-color'
call plug#end()
let g:Illuminate_delay = 250

" nerd tree
map <C-n> :NERDTreeToggle<CR>
" autocmd BufEnter * lcd %:p:h

" Auto insert
""""""""""""""""""""""""""""""
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
""""""""""""""""""""""""""""""

" Startup tags
autocmd VimEnter * nested :TagbarOpen
let g:tagbar_width=25

" airline
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" add branch
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set statusline+=%{fugitive#statusline()}

hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE

" markdown
let g:markdown_preview_auto=1


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

" tagbar shortcut
nnoremap <Space>; :TagbarOpen -j<cr>
nnoremap <C-i> :TagbarToggle<cr>

" xml edit
let g:xml_namespace_transparent=1
set encoding=utf-8

" Config syntax
au BufRead,BufNewFile Podfile set filetype=ruby

" set undo
set undofile
set undodir=~/.vim/undodir


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
colorscheme palenight
let g:palenight_terminal_italics=1

let mapleader = " "

" quick window move
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" vim javascripe
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" python host
let g:python3_host_prog = '/usr/local/bin/python3'

" indent guide
" let g:indent_guides_enable_on_vim_startup = 1
" indentline
let g:indentLine_enabled = 1

" addons
let g:NERDTreeShowIgnoredStatus = 1

" select multiline
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_next_key            = '<C-m>'

" mac clipboard
" set clipboard=unnamed
set clipboard+=unnamedplus

" ag search from root
let g:ag_working_path_mode="r"

" ctrip
"" ingore node_module
set wildignore+=*/node_modules/*
source ~/.config/nvim/local.vim

" fold
" set foldmethod=indent
" set foldlevel=1
" set foldcolumn=3
set foldlevel=2
set foldcolumn=3

" prettier auto format
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" syntastic
let g:syntastic_yaml_checkers = ['yamllint']

augroup GolangSettings
  au FileType go nmap <leader>gd <Plug>(go-def-vertical)
augroup END







