"
"                                                     _..._     
"                                                  .-'_..._''.  
" .----.     .----..--. __  __   ___             .' .'      '.\ 
"  \    \   /    / |__||  |/  `.'   `.          / .'            
"   '   '. /'   /  .--.|   .-.  .-.   '.-,.--. . '              
"   |    |'    /   |  ||  |  |  |  |  ||  .-. || |              
"   |    ||    |   |  ||  |  |  |  |  || |  | || |              
"   '.   `'   .'   |  ||  |  |  |  |  || |  | |. '              
"    \        /    |  ||  |  |  |  |  || |  '-  \ '.          . 
"     \      /     |__||__|  |__|  |__|| |       '. `._____.-'/ 
"      '----'                          | |         `-.______ /  
"                                      |_|                  `   
"                                                               
"
" Plugs {{{
set nocompatible
" Autoinstall vim-plug if not there
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'dracula/vim' , {'as' : 'dracula'}
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-colors-pencil'
Plug 'dylanaraps/wal.vim'

call plug#end()
" }}}
" General {{{
set encoding=utf-8

" close folds in this file
setlocal foldlevel=0

" pathogen package manager
"execute pathogen#infect()

" turn on filetypes and local plugin mappings 
filetype plugin on

" Turn off highlighting from any previous session
setlocal nohlsearch

" Rebind : to ; for easier pressing
nnoremap ; :
"nnoremap : ;

" }}}
" Editing {{{
" Allows backspace to delete newlines
set backspace=indent,eol,start
" hard wrapping at 80 chars
" update 05/2020 this breaks lots of stuff so don't do it :(
"set textwidth=80
" scroll offset so the cursor is always 4 lines from the edge of screen
set scrolloff=4
" shortcut to format json files nicely
nnoremap <leader>fj :%!python -m json.tool<CR>
" }}}
" Colorscheme {{{
 colorscheme evening 
syntax enable
try
    "colorscheme wal
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme zellner
endtry
" }}}
" Tabs {{{
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tabs are spaces
set shiftwidth=4
set smarttab
set autoindent
" }}}
" UI Settings {{{
" update 02/2019: this breaks everything so don't do it :(
"set columns=120
"set lines=35
set number " show line numbers
set showcmd " show last command in bottom bar
set cursorline " highlights the current line
" set cursorline highlighting to be a dark grey as well
" as bold
hi CursorLine cterm=bold ctermbg=234 gui=bold 
set ruler " set ruler
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
set wildmode=longest,list,full
"set lazyredraw " speed up macros
set showmatch " highlight matching brackets
" Marker column at 80 chars
set colorcolumn=80
highlight ColorColumn ctermbg=60 guibg=SlateGray1
set laststatus=2
" }}}
" Searching {{{
set incsearch " search as characters typed
set hlsearch " highlight matches
nohl
set ignorecase
set smartcase " ignore case while searching unless you type an uppercase 
" bind key to turn off search highlight (leader+space)
nnoremap <silent> <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
set foldenable " enables folding
set foldlevelstart=0 " open most folds by default (0 closed, 99 open)

set foldnestmax=10 " 10 nested fold max
" space toggles folds
nnoremap <CR> za
nnoremap <space> <nop>

" fold via markers (triple curly brackets)
set foldmethod=marker 
" marker, manual, expr, syntax, diff

" }}}
" Movement {{{
" move vertically by visual line, not actual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
" 'super H' and 'super L'
nnoremap H ^
nnoremap L $

" Remap y to yank to system clipboard (I think?)
nnoremap y "+y

" Shortcut to open vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Shortcut to source vimrc
nnoremap <leader>sv :so $MYVIMRC<cr>

" open splits to the right by default
set splitright

" remap ctrl-hjkl keys to navigate splits
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-h> <C-W><C-H>
nnoremap <C-l> <C-W><C-L>

" move lines up and down (like atom)
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==

" center on search
nnoremap n nzz
nnoremap N Nzz

" center on back/forward
nnoremap <C-I> <C-I>zz
nnoremap <C-O> <C-O>zz
" }}}
" netrw Settings {{{
" disable the banner
let g:netrw_banner = 0
" tree view default
let g:netrw_liststyle = 3
" open new files in vertical split
let g:netrw_browse_split = 0
" limit width to 25%
let g:netrw_winsize = 25
" }}}
" Modeline (for this file) {{{
set modelines=5
" vim:foldmethod=marker:foldlevel=0
" }}}
" Functions {{{
let g:writing_mode=0
function! WritingModeToggle()
    if g:writing_mode
        colorscheme dracula
        set background=dark
        Goyo
        Limelight!
        let g:writing_mode=0
    else
        colorscheme pencil
        set background=light
        Goyo
        Limelight
        set textwidth=80
        let g:writing_mode=1
    endif
endfunction
nnoremap <leader>wm :call WritingModeToggle()<CR>
" }}}
"
" ksdfj
