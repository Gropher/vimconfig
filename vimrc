set nocompatible
set encoding=utf-8

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"load ftplugins and indent files
filetype on
filetype plugin on
filetype indent on

"search options
set hlsearch
set ignorecase
set smartcase
set incsearch

"enable pathogen
call pathogen#infect()

"turn on syntax highlighting
syntax on

"some key mapping
map ,t :tabnext<cr>
map ,f za
cnoreabbrev to tabnew
cnoreabbrev tn tabnext
cnoreabbrev tp tabprevious
cnoreabbrev td tabdo
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev wQ wq
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev WQa wqa
cnoreabbrev Wqa wqa
cnoreabbrev wQa wqa


"some stuff to get the mouse going in term
"set mouse=a
"set ttymouse=xterm2
"set clipboard=unnamedplus
""nnoremap <C-c> y
"vnoremap <C-c> y
""nnoremap <C-v> p
"vnoremap <C-v> p

"tell the term has 256 colors
set t_Co=256

"folding settings
set foldmethod=indent
set nofoldenable

"tab settings
set tabstop=2
set shiftwidth=2
set expandtab

"statusline setup
set statusline=%f "tail of the filename

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set history=100
set ruler
retab
set pastetoggle=<F2>
set wildmenu

"open file where you left it
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"NERDTree settings
let mapleader = ","
nnoremap <F1> :NERDTreeTabsToggle<cr>
let NERDTreeMapActivateNode='<CR>i'
let NERDTreeDirArrows=0

"NERDCommenter settings
map <C-z> ,c<space>

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"syntastic enabled by default
let g:syntastic_check_on_open=0
let g:syntastic_auto_loc_list=1
let g:syntastic_auto_jump=1
map ,e :Errors<cr>
map ,s :SyntasticCheck<cr>

"rubycompletion
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"supertab
let g:SuperTabDefaultCompletionType = "context"

"tagbar
map ,l :TagbarToggle<cr>
