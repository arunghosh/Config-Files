call plug#begin('~/.vim/plugged')
"Plug 'Chronial/browser.vim'
"Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'antoyo/vim-licenses'
" Plug 'benjaminwhite/Benokai'
" Plug 'garbas/vim-snipmate'
"Plug 'glidenote/memolist.vim'
" Plug 'gregsexton/MatchTag', { 'for': 'html' }
"Plug 'kshenoy/vim-signature'

" Plug 'Valloric/YouCompleteMe'
Plug 'kana/vim-operator-user'
Plug 'haya14busa/vim-operator-flashy'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tpope/vim-unimpaired'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'ternjs/tern_for_vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/html-improved-indentation'
Plug 'Slava/tern-meteor'
Plug 'pangloss/vim-javascript'
Plug 'burnettk/vim-angular'
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
Plug 'powerline/powerline'
Plug 'jmcantrell/vim-virtualenv'
Plug 'tpope/vim-surround'
" Plug 'Townk/vim-autoclose'
Plug 'vim-scripts/tComment'
Plug 'bling/vim-airline'
Plug 'vim-scripts/taglist.vim', { 'on':  'TlistToggle' }
Plug 'mtth/scratch.vim'
Plug 'tmhedberg/matchit'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'jiangmiao/auto-pairs'
" Plug 'ryanoasis/vim-devicons'
call plug#end()



set shiftwidth=4 softtabstop=4
set tabstop=4
set autoindent
set smartindent
set relativenumber
syntax enable

set t_Co=256
let g:gruvbox_italic=0
let g:gruvbox_contrast_dark='hard'
let g:solarized_termcolors=256
" colorscheme gruvbox
colorscheme PaperColor
set background=light
let g:airline_theme='PaperColor'
let g:lightline = { 'colorscheme': 'PaperColor' }

set ignorecase
set smartcase
" autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
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
   set guioptions-=m "remove menubar
   set guioptions-=T "remove toolbar
   set guioptions-=r "remove right-hand scroll bar
   set guioptions-=L "remove left-hand scroll barendif
   set guifont=Monaco\ 9
   set guifont=Hack\ 9
   " set guifont=Liberation\ Mono\ 9
endif
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:user_emmet_leader_key='<C-X>'
let g:syntastic_mode_map = {
\ "mode": "active",
\ "active_filetypes": ["python"],
\ "passive_filetypes": ["html", "javascript"] }
" let g:syntastic_quiet_messages = {
" \ "!level": "errors",
" \ "type": "style",}
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

let g:indentLine_char = '|'
let g:indentLine_color_term = 'gray'
let g:indentLine_fileType = ['python', 'javascript']

" insert mode hightlight
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" noremap <silent> <C-S>          :update<CR>
" vnoremap <silent> <C-S>         <C-C>:update<CR>
" inoremap <silent> <C-S>         <C-O>:update<CR>

" Toggle error window
function! ToggleErrors()
    if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
         " No location/quickfix list shown, open syntastic error location panel
         Errors
    else
        lclose
    endif
endfunction
nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>
" for hypen auto-complete
set iskeyword+=\-

" ctrl-p ignore folders
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/bower_components,*/node_modules

" Search options
set incsearch
set incsearch

" Flash while yanking
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$
