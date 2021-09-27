set nocompatible              " be iMproved, required
filetype off                  " required

" execute pathogen#infect()

" Vundle specific stuff (commented out for now)
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'whiteinge/diffconflicts'
Plugin 'OmniCppComplete'
Plugin 'ervandew/supertab'
Plugin 'chrisbra/Recover.vim'
Plugin 'dhruvasagar/vim-zoom'
Plugin 'junegunn/fzf.vim'
Plugin 'henrynewcomer/vim-theme-papaya'
Plugin 'Chiel92/vim-autoformat'
Plugin 'tpope/vim-obsession'
"Plugin 'delphinus/vim-auto-cursorline'
"Plugin 'yegappan/taglist'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'ctrlpvim/ctrlp.vim'
"
"/nfs/projects/verif/ome/mkarthik/astyle/build/gcc/bin

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
set runtimepath^=~/.vim/bundle/ctrlp.vim

set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" insert matching braces
"inoremap <> <><Left>
"inoremap () ()<Left>
"inoremap {} {}<Left>
"inoremap [] []<Left>
"inoremap "" ""<Left>
"inoremap '' ''<Left>
"inoremap `` ``<Left>
"

let g:formatterpath = ['/nfs/projects/verif/ome/mkarthik/astyle/build/gcc/bin']
nnoremap <silent> <C-p> :Files<CR>

" Autocomplete menu
"
"change the behavior of the <Enter> key when the popup menu is visible. In
"that case the Enter key will simply select the highlighted menu item, just as
"<C-Y> does.
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Colors
set t_Co=256
"let g:solarized_termcolors=256
syntax enable           " enable syntax processing
set background=dark
"set background=light
"colorscheme solarized
"colorscheme default
if has("gui_running")
    colorscheme desert
else
"    colorscheme solarized
   colorscheme sorcerer
endif

if has("gui_running")
    set guifont=DejaVu\ Sans\ Mono\ 8
endif

set cursorline          " highlight current line

if &diff
    colorscheme sorcerer
    set nocursorline    " Dont highlight current line in diff mode (since it messes with the diff colors)
endif

set nowrap

" Spaces & Tabs
set shiftwidth=3
set smarttab
set tabstop=3           " number of visual spaces per TAB
set softtabstop=3       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set backspace=indent,eol,start
set autoindent          " turns it on
set smartindent         " does the right thing (mostly) in programs
set cindent             " stricter rules for C programs

" UI Config
set number              " show line numbers
set showcmd             " show command in bottom bar
set wildmode=longest,list,full
set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching brackets [{()}]
"set so=5                " scroll screen when 5 lines from the edge
set mouse=a             " set usage of mouse
"set ttymouse=xterm2
"if &term =~ '^screen'
"    set ttymouse=xterm2
"endif
set colorcolumn=80                                                                                                                                                                                                                                                     [63/454]
"set guifont=Inconsolata\ Medium\ 10
set splitright          " Open new split panes to the right
" set autochdir           " Set the working dir to wherever the open file lives

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set ignorecase
set laststatus=2

" search selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Folding
" set foldenable          " enable folding
" set foldlevelstart=10   " open most folds by default
                        " space open/closes folds
nnoremap <space> za
noremap <silent> <Leader>vs :set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>

" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>
nnoremap <Leader>V :vsplit **/*
"noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>
"set foldmethod=indent   " fold based on indent level
set path+=**

nnoremap <F9> :buffers<CR>:buffer<Space>

nnoremap <silent> <F11> :TagbarToggle<CR>
nnoremap ]c ]czz         " Map 'next diff' command to also move the diff to the middle of screen
nnoremap [c [czz         " Map 'prev diff' command to also move the diff to the middle of screen
noremap Zz <c-w>_ \| <c-w>\|
noremap Zo <c-w>=

" Use the system clipboard - enables easy copy/paste
" set clipboard=unnamedplus
" set go+=a
" set clipboard=exclude:.*

"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_max_files = 0
"let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_lazy_update = 150
let g:ctrlp_match_window = 'results:1000'
let g:ctrlp_status_func = {
  \ 'mmode' : 'filename-only',
  \ }

" Settings for gutentags
"set statusline+=%{gutentags#statusline()}
"let g:gutentags_ctags_executable = '/usr/bin/ctags'
"let g:gutentags_generate_on_missing = 1
"let g:gutentags_define_advanced_commands = 1
"let g:gutentags_project_root = ['Jamfile']
"let g:gutentags_cache_dir = '/nobackup/murkarth/gutentags'

"let g:clang_library_path='/nobackup/murkarth/clang/lib/libclang.so'
"let g:clang_snippets = 1
"let g:clang_auto_select = 1
"let g:clang_snippets_engine = 'clang_complete'
" let g:clang_compilation_database = '/nobackup/murkarth/clang/db'
"let g:clang_complete_macros = 1
"let g:clang_complete_patterns = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_x = '%{ObsessionStatus()}'
set encoding=utf-8
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'
"let g:ycm_global_ycm_extra_conf = '/home/mkarthik/.ycm_extra_conf.py'
"
"
"
"
" Taglist
nnoremap <silent> >f :TlistToggle<CR>

" A message will appear in the message line when you're in a submode
" and stay there until the mode has exited.
"let g:submode_always_show_submode = 1

" Submode for window resize
" Press ctrl-w followed by =, - to resize horiz split
" Press ctrl-w followed by >, < to resize vert split
"call submode#enter_with('window', 'n', '', '<C-w>')
"call submode#leave_with('window', 'n', '', '<Esc>')

" Go through every letter
"for key in ['a','b','c','d','e','f','g','h','i','j','k','l','m',
"\           'n','o','p','q','r','s','t','u','v','w','x','y','z']
"  " maps lowercase, uppercase and <C-key>
"  call submode#map('window', 'n', '', key, '<C-w>' . key)
"  call submode#map('window', 'n', '', toupper(key), '<C-w>' . toupper(key))
"  call submode#map('window', 'n', '', '<C-' . key . '>', '<C-w>' . '<C-'.key . '>')
"endfor
" Go through symbols. Sadly, '|', not supported in submode plugin.
"for key in ['=','_','+','-','<','>']
"  call submode#map('window', 'n', '', key, '<C-w>' . key)
"endfor

"call submode#map('window', 'n', '', '-', '<C-w>-')
"call submode#map('window', 'n', '', '+', '<C-w>+')
"call submode#map('window', 'n', '', '>', '<C-w>>')
"call submode#map('window', 'n', '', '<', '<C-w><')

"call submode#enter_with('unredo', 'n', '', 'g-', 'g-')
"call submode#enter_with('unredo', 'n', '', 'g+', 'g+')
"call submode#leave_with('unredo', 'n', '', '<Esc>')
"call submode#map('unredo', 'n', '', '-', 'g-')
"call submode#map('unredo', 'n', '', '+', 'g+')
"
"vim-zoom shortcut - <C-W>m
"




" Start in patience diff mode when invoked from vimdiff/git difftool
if &diff
   let &diffexpr='EnhancedDiff#Diff("git diff", "--diff-algorithm=patience")'
endif

nnoremap <silent><Space>* :let @/='\<'.expand('<cword>').'\>'<bar>set hlsearch<CR>
let g:airline_theme='xtermlight'

" Set case insensitive search in cscope
set csprg=/usr/bin/cscope\ -C
