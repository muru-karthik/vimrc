set nocompatible              " be iMproved, required
filetype off                  " required

" execute pathogen#infect()

" Vundle specific stuff (commented out for now)
" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" Plugin 'VundleVim/Vundle.vim'
" Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required

" Colors
set t_Co=256
"let g:solarized_termcolors=256
syntax enable           " enable syntax processing
"set background=dark
"set background=light
"colorscheme solarized
colorscheme desert

" Spaces & Tabs
set shiftwidth=4
set smarttab
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set backspace=indent,eol,start
set autoindent          " turns it on
set smartindent         " does the right thing (mostly) in programs
set cindent             " stricter rules for C programs

" UI Config
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmode=longest,list,full
set wildmenu            " visual autocomplete for command menu
"set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching brackets [{()}]
"set so=10               " scroll screen when 10 lines from the edge
set mouse=a             " set usage of mouse
"set ttymouse=xterm2
"if &term =~ '^screen'
"    set ttymouse=xterm2
"endif
set colorcolumn=80

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set ignorecase

" Folding
" set foldenable          " enable folding
" set foldlevelstart=10   " open most folds by default
                        " space open/closes folds
nnoremap <space> za
noremap <silent> <Leader>vs :set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>
"noremap <silent> <Leader>vs :<C-u>let @z=&so<CR>:set so=0 noscb<CR>:bo vs<CR>Ljzt:setl scb<CR><C-w>p:setl scb<CR>:let &so=@z<CR>
"set foldmethod=indent   " fold based on indent level


" Use the system clipboard - enables easy copy/paste
" set clipboard=unnamedplus
" set go+=a
" set clipboard=exclude:.*

"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_root_markers = ['.ctrlp']
"let g:ctrlp_max_files = 100

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
