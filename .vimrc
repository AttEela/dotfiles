syntax on
set number

"set auto read
set autoread

set ignorecase

set smartcase

set hlsearch

set incsearch

set showmatch

filetype indent on

set wildmenu
set wildmode=full

" Buffer movement
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

set nobackup
set nowb
set noswapfile

"definiton of leader
let mapleader = ","

"Mapping for linter Toggle ALE with <leader>sc
nnoremap <leader>l :ALEToggle<CR>

" Mapping shortcuts key
:imap jj <Esc>

" Buffer movement
:nnoremap <C-n> :bnext<CR>
:nnoremap <C-p> :bprevious<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
\ endif



if empty(glob('~/.vim/autoload/plug.vim'))
 silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.vim/plugged')
Plug 'edkolev/promptline.vim'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript' "“Js hightlight
Plug 'roxma/vim-paste-easy' "” Avoid indent
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }  "” File manager <F3>
Plug 'w0rp/ale' "” Asynchronous linter <leader>sc
Plug 'tpope/vim-fugitive' "” Git-vim
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Vimjas/vim-python-pep8-indent' "” Better python indent
Plug 'leafgarland/typescript-vim' " Typescript lighting
call plug#end()


" Black theme
set background=dark

" Add underline syntax details
syntax enable

" 16 colors theme
let g:gruvbox_termcolors = 16
"let g:solarized_use16 = 1

" Set italics
"let g:solarized_term_italics=1
"let g:gruvbox_italic=1

" Set color scheme
colorscheme gruvbox
"colorscheme solarized8

"""""""""""""
"  Airline  "
"""""""""""""
" Dont use whitespace
let g:airline#extensions#whitespace#enabled = 0

" Use tabline
let g:airline#extensions#tabline#enabled = 1

" Use branch
let g:airline#extensions#branch#enabled=1

" Use hunks
let g:airline#extensions#hunks#enabled=0

" Use powerline fonts
let g:airline_powerline_fonts = 1


""""""""""""""
"  Filetype  "
""""""""""""""
au FileType javascript  setlocal tabstop=2 shiftwidth=2 expandtab
au FileType json  setlocal tabstop=2 shiftwidth=2 expandtab
au FileType typescript  setlocal tabstop=2 shiftwidth=2 expandtab

"CLipboard
set clipboard+=unnamed

" Theme
"let g:airline_theme='solarized'
let g:airline_theme='gruvbox'

""""""""""""""
"  Tmuxline  "
""""""""""""""
" Create snapshot using: 'TmuxlineSnapshot! .tmux.theme'
"
" use airline
let g:airline#extensions#tmuxline#enabled = 1

" Conf tmuxline
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'b'    : '#(~/.dotfiles/new_mail.sh)',
      \'win'  : ['#W'],
      \'cwin' : '#F #W',
      \'z'    : '%R'}

""""""""""""""""
"  Promptline  "
""""""""""""""""
" Create snapshot using ':PromptlineSnapshot! .shell_prompt.sh airline'
"
" Conf promptline
let g:promptline_preset = {
        \'a'    : [ promptline#slices#host() ],
        \'b'    : [ promptline#slices#cwd() ],
        \'c'    : [ promptline#slices#vcs_branch() ],
        \'warn' : [ promptline#slices#last_exit_code() ],
        \'z'    : [ promptline#slices#python_virtualenv() ]}
