call plug#begin('~/.vim/plugged')
"Plug 'Chronial/browser.vim'
"Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'antoyo/vim-licenses'
" Plug 'benjaminwhite/Benokai'
" Plug 'garbas/vim-snipmate'
"Plug 'glidenote/memolist.vim'
" Plug 'gregsexton/MatchTag', { 'for': 'html' }
"Plug 'kshenoy/vim-signature'
"Plug 'tpope/vim-repeat'

Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-visual-star-search'
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'ervandew/supertab'
Plug 'gorkunov/smartpairs.vim'
Plug 'honza/vim-snippets'
Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle' }
Plug 'junegunn/vim-easy-align'
Plug 'justinmk/vim-gtfo'
Plug 'justinmk/vim-syntax-extra'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'nvie/vim-flake8', { 'for': 'python' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-fugitive'
" Plug 'powerline/powerline'
Plug 'jmcantrell/vim-virtualenv'
Plug 'tpope/vim-surround'
Plug 'Townk/vim-autoclose'
Plug 'vim-scripts/tComment'
Plug 'bling/vim-airline'
Plug 'vim-scripts/taglist.vim', { 'on':  'TlistToggle' }
Plug 'mtth/scratch.vim'
Plug 'ConradIrwin/vim-bracketed-paste'
" Plug 'ryanoasis/vim-devicons'
call plug#end()



set shiftwidth=2 softtabstop=2
set tabstop=3
set autoindent
set smartindent
set relativenumber
syntax enable
set t_Co=256
let g:gruvbox_italic=0
colors gruvbox
colorscheme gruvbox
set bg=dark
" let g:solarized_termcolors=256

set ignorecase
set smartcase
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
filetype on

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
nnoremap th ;tabfirst<CR>
nnoremap tj ;tabnext<CR>
nnoremap tk ;tabprev<CR>
nnoremap tl ;tablast<CR>
if has('gui_running')
   set guioptions-=T " no toolbar
   set guioptions-=T "remove toolbar
   set guioptions-=r "remove right-hand scroll bar
   set guioptions-=L "remove left-hand scroll barendif
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
\ "!level": "errors",
\ "type": "style",}
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
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" silver search
let g:ackprg = 'ag --nogroup --nocolor --column'
if executable("ag")
    let g:ackprg = 'ag --nogroup --nocolor --column'

    " Use Ag over Grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" let g:indentLine_char = '.'
let g:indentLine_color_term = 239
let g:indentLine_fileType = ['python', 'javascript']
