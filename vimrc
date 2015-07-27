" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
set shiftwidth=2 softtabstop=2
set tabstop=2
set autoindent
set smartindent
"set nu
set relativenumber
syntax enable
set t_Co=256
let g:gruvbox_italic=0
colors gruvbox
colorscheme gruvbox
set bg=dark
" let g:solarized_termcolors=256
execute pathogen#infect()
set ignorecase
set smartcase 
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
filetype on

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
filetype plugin on
set expandtab
set laststatus=2
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
let NERDTreeIgnore = ['\.pyc$']
let g:NERDTreeWinPos = "right"
" nmap <F5> ;NERDTreeToggle<CR>
nmap <silent> <C-D> ;NERDTreeToggle<CR>
nmap <F8> ;TagbarToggle<CR>
:iabbrev <// </<C-X><C-O>
"let g:virtualenv_auto_activate 
"disable doc string window in python auto completeion - python-jedi
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_on_dot = 1
let g:jedi#show_call_signatures = "0"
nnoremap th  ;tabfirst<CR>
nnoremap tj  ;tabnext<CR>
nnoremap tk  ;tabprev<CR>
nnoremap tl  ;tablast<CR>
if has('gui_running')
  set guioptions-=T  " no toolbar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll barendif
endif
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:user_emmet_leader_key='<C-X>'

let g:syntastic_mode_map = {
  \ "mode": "active",
  \ "active_filetypes": ["python"],
  \ "passive_filetypes": ["javascript","html"] }
let g:syntastic_quiet_messages = {
  \ "!level":  "errors",
  \ "type":    "style",}
nnoremap ; :
nnoremap : ;
nnoremap ! :!
set cursorline
set autoindent
set ttyfast
set nu
nnoremap <c-k> :m-2<cr>==
nnoremap <c-j> :m+<cr>==
inoremap <c-j> <esc>:m+<cr>==gi
inoremap <c-k> <esc>:m-2<cr>==gi
vnoremap <c-j> :m'>+<cr>gv=gv
vnoremap <c-k> :m-2<cr>gv=gv
let mapleader = ","
inoremap jk <Esc> 
set runtimepath^=~/.vim/bundle/ctrlp.vim
if has("autocmd")
  au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
  au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
  au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif
:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
