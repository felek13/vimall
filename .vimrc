:silent !stty -ixon
set nocompatible
filetype on
syntax enable
filetype indent on
filetype plugin on
set fileencoding=utf-8 encoding=utf-8 ffs=unix,dos,mac
set so=7 
set ignorecase
set autoindent 
set smartindent 
set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab 
set backspace=indent,eol,start whichwrap+=<,>,[,]
set incsearch
set showmatch
set relativenumber
set list
set listchars=tab:\ \ ,eol:¬ 
set cursorline 
hi cursorline cterm=none ctermbg=black
set visualbell 
set background=dark
colorscheme 256-grayvim
execute pathogen#infect()
set linebreak
set wrap
set smarttab "be smart when using tabs
set nobackup
set noswapfile


let g:NERDTreeWinPos = "right"
nnoremap <space> a<space><esc>
let g:user_emmet_leader_key=','

vnoremap <c-s> :w<CR>
inoremap <c-s> <ESC>:w<CR>
nnoremap <c-s> :w<CR>


let mapleader=","

vnoremap <leader>y "ay<ESC>
nnoremap <leader>p "ap

nnoremap <leader>q :q<CR>
nmap <CR> o<esc>
inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>w :NERDTreeToggle<CR>
nnoremap <F3> li<CR><ESC>
nmap \ :res<CR>:vertical res<CR>$
nmap = <c-w>=

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%
set laststatus=2
au BufWinLeave * mkview "save code folding after file opening
au BufWinEnter * silent loadview

"set term=xterm-256color
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
"set t_Co=256
"autocmd BufEnter * :syntax sync fromstart
"let g:rehash256 = 1
"let g:sh_no_error=1
"let g:solarized_termcolors=256

"skroty klawiszowe

"zfat - folduj w tagach
"zf#j - folduj # linii
"za - toggle open close fold
"zM - zamyka wszystkie foldy
"zf/string
"zj - move to next fold
"zk - move to previous fold
"zo - open fold
"% - przejdz do zamknięcia nawiasów
"gg=G - autoindent all
"program tcomment do komentowania
"gcw - comment one word
"<ctrl+_>b comment block
"gcc - comment line
