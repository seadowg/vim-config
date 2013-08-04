" ----------------------------------------
" File: .vimrc
" Author: Chris Brown <cb@tardis.ed.ac.uk>
" Last Change: 16-Feb-2011.
"
" Large Contributions:
"	Ryan Tomayko    - (romayko/dotfiles)
"	Steve Losh      - (sjl/dotfiles)
"	Kim Silkebækken - (Lokaltog/vimfiles)
" ----------------------------------------

" Plugin Variables
" Taglist should gain focus when opened.
let Tlist_GainFocus_On_ToggleOpen=1

" Powerline prettiness
let g:Powerline_symbols = 'fancy'

" Ctrl-p
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'


" Prelude
" Turn off vi compatibility. Vim Supremacy!
set nocompatible
filetype off

" Plugins
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Plugins
Bundle 'Lokaltog/vim-powerline'
Bundle 'godlygeek/tabular'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'sjl/gundo.vim'
Bundle 'sjl/vitality.vim'
Bundle 'taglist.vim'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'derekwyatt/vim-scala'
Bundle 'jnwhiteh/vim-golang'

set encoding=utf-8
set scrolloff=5
set showmode
set showcmd
set hidden
set autoread
set autowrite
set numberwidth=5
set ttyfast
set ruler
set modelines=0
set backspace=start,indent,eol
set nospell
set linebreak
set laststatus=2

" Show matching brace on insertion or cursor over.
set showmatch
set matchtime=3
set matchpairs+=<:>

" Allow freeform visual selections.
set virtualedit+=block

" Set the <leader> key to '`'.
let mapleader = "`"
let maplocalleader = "\\"

" Remember many commands into the past.
set history=2000

" Replace globally by default.
set gdefault

" Use open buffers
set switchbuf=useopen,usetab

" Set up persistent undo.
set undofile
set undodir=~/tmp/vim/undo
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif

" Report every change to me.
set report=0

" Don't move the cursor to the start of the line when scrolling.
set nostartofline

" Single space after full stop.
set nojoinspaces

" Default to using UTF-8.
set fileencodings=utf-8

" Grep should show the line and file number.
set grepprg=grep\ -nH\ $*

" Open a new split on the right or below.
set splitbelow

" Use the same symbols as TextMate for tabstops and EOLs
set list
set listchars=tab:▸\ ,trail:·

" Long Line Handling
set wrap
set textwidth=79
set formatoptions=qrn1

set confirm

" Wildmenu Settings
" Make file completion like a shell.
set wildmode=longest,list
set wildmenu

" Ignore certain filetypes.
set wildignore=*.class            " Ignore compiled Java files
set wildignore+=.svn,CVS,.git     " Ignore VCS files
set wildignore+=*.o,*.a,*.so      " Ignore compiled binaries
set wildignore+=*.jpg,*.png,*.gif " Ignore images
set wildignore+=*.pdf             " Ignore PDF files
set wildignore+=*.pyc,*.pyo       " Ignore compiled Python files
set wildignore+=*.hi,*.ho         " Ignore compiled Haskell files
set wildignore+=*.DS_Store?       " OSX bullshit

" Searching
" Highlight search matches.
set hlsearch

" Ignore case when searching.
set ignorecase

" Try to find matches as we type the search string.
set incsearch

" Only be case sensitive if the search string contains an uppercase letter.
set smartcase

" Folding
set foldcolumn=0
set foldenable
set foldlevel=0
set foldmethod=marker

" GUI
" Turn syntax highlighting on.
syntax on

" Vim Theme
set background=dark
colorscheme base16-tomorrow

" Turns on line numbering.
set number

" Always show the ruler in the status bar.
set ruler

" Fix the mouse in the console.
set mouse=a

" Indent
set tabstop=4
set smarttab
set shiftwidth=4
set autoindent
:set expandtab

" Keybindings
" Make C-e and C-y scroll faster.
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" Easy split movement.
map <C-j> <C-W>j<C-W>
map <C-k> <C-W>k<C-W>
map <C-h> <C-W>h<C-W>
map <C-l> <C-W>l<C-W>

" Make the regex engine be a bit more normal.
nnoremap / /\v
vnoremap / /\v

" Long lines can mess up movement.
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" Create a new line below no matter where we are in the current line.
imap <D-Return> <ESC>o
nmap <D-Return> o<ESC>

" Markdown Underlining
map <leader>1 YpVr=
map <leader>2 YpVr-

" Show a list of tags
map <leader>a :TlistToggle<cr>

" Move aroud quicklists
map <C-Up> :cprev<CR>
map <C-Down> :cnext<CR>

" Don't highlight after we type press enter.
nnoremap <space> :nohlsearch<cr>

" STOP HIGHLIGHTING DAMMIT
noremap <leader><space> :noh<cr>

" You forgot to `sudo vim` a read only file. No problem!
cmap w!! %!sudo tee > /dev/null %

" Show the best undo plugin ever.
nnoremap <leader>u :GundoToggle<CR>

" Bubble Bubble, Toil and Trouble.
nmap <D-Up> [e
nmap <D-Down> ]e
vmap <D-Up> [egv
vmap <D-Down> ]egv

" Reselect visual block after in/dedent so we can in/dedent more.
vnoremap < <gv
vnoremap > >gv

" Open up .vimrc from anywhere.
map <leader>v :tabedit $MYVIMRC<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use Q for formatting the current paragraph (or selection).
vmap Q gq
nmap Q gqap

" Toggle between number and relative number.
nnoremap <leader>r :call ToggleRelativeAbsoluteNumber()<CR>
function! ToggleRelativeAbsoluteNumber()
  if &number
    set relativenumber
  else
    set number
  endif
endfunction

" Align lines based on a character.
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
  nmap <Leader>a& :Tabularize /&<CR>
  vmap <Leader>a& :Tabularize /&<CR>
endif

function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
	let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
	let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
	Tabularize/|/l1
	normal! 0
	call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Align tables while creating them.
inoremap <silent> <Bar> <Bar><Esc>:call <SID>align()<CR>a

" Only insert a tab is we aren't the first char on a line.
"function! InsertTabWrapper()
    "let col = col('.') - 1
    "if !col || getline('.')[col - 1] !~ '\k'
        "return "\<tab>"
    "else
        "return "\<c-p>"
    "endif
"endfunction
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>
nnoremap <tab> %
vnoremap <tab> %

" RUN THE TESTS.
function! CorrectTestRunner()
  if match(expand('%'), '\.feature$') != -1
    return "cucumber"
  elseif match(expand('%'), '_spec\.rb$') != -1
    return "rspec"
  else
    return "ruby"
  endif
endfunction

function! RunCurrentTest()
  if CorrectTestRunner() == "ruby"
    exec "!ruby" "-Itest" expand('%:p')
  else
    exec "!" . CorrectTestRunner() expand('%:p')
  endif
endfunction

function! RunCurrentLineInTest()
  exec "!" . CorrectTestRunner() expand('%:p') . ":" . line(".")
endfunction

map <leader>sf :call RunCurrentTest()<CR>
map <leader>sl :call RunCurrentLineInTest()<CR>

" Filetype
" Plugin loading for specific filetypes.
filetype plugin on
filetype plugin indent on

" Set the omnicomplete function.
set ofu=syntaxcomplete#Complete

" Search for the tag file up to the filesystem root.
set tags=./tags;
set complete=i,t

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

autocmd FileType cucumber compiler cucumber | setl makeprg=cucumber\ \"%:p\"
autocmd FileType ruby
      \ if expand('%') =~# '_test\.rb$' |
      \   compiler rubyunit | setl makeprg=testrb\ \"%:p\" |
      \ elseif expand('%') =~# '_spec\.rb$' |
      \   compiler rspec | setl makeprg=rspec\ \"%:p\" |
      \ else |
      \   compiler ruby | setl makeprg=ruby\ -wc\ \"%:p\" |
      \ endif
autocmd User Bundler
      \ if &makeprg !~# 'bundle' | setl makeprg^=bundle\ exec\  | endif


" Events
" When editing a file, always jump to the last known cursor position. Don't do
" it when the position is invalid or when inside an event handler (happens
" when dropping a file on gvim).
if has("autocmd")
  autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
      \ exe "normal g`\"" |
    \ endif
endif

" Don't store undo for temp files.
au BufWritePre /tmp/* setlocal noundofile

function! s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function! s:setupMarkup()
  call s:setupWrapping()
endfunction

" Markdown is great for writing text files.
autocmd BufNewFile,BufRead,BufEnter *.txt setlocal filetype=markdown

" language specific settings
autocmd FileType python set ts=4|set sw=4|set expandtab|set sts=4
autocmd FileType ruby set ts=2|set sw=2|set expandtab|set sts=2
autocmd FileType vim set ts=2|set sw=2|set expandtab|set sts=2
autocmd FileType java set ts=4|set sw=4|set noexpandtab|set sts=4
autocmd FileType make set noexpandtab
autocmd BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()
autocmd BufRead,BufNewFile {Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufRead,BufNewFile *.txt call s:setupWrapping()

" Save all files when Vim loses focus.
autocmd FocusLost * :wa

" Strip all white space from the end of files
autocmd BufWritePre * :%s/\s\+$//e

" Fix splits on resize
autocmd VimResized * exe "normal \<c-w>="

" Backup
set backupdir=$HOME/.vim/backup//		 " store backups under ~/.vim/backup
set backupcopy=yes					     " keep attributes of original file
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/swap//	         	 " keep swp files under ~/.vim/swap

" Abbreviations
cabbrev Q quit
cabbrev W write

function! Fixflowed()
  " save cursor position
  let pos = getpos(".")
  " fix the wockas spacing from the text
  silent! %s/^[> ]*>\ze[^> ]/& /
  " compress the wockas
  while search('^>\+ >', 'w') > 0
    s/^>\+\zs >/>/
  endwhile
  " restore the original cursor location
  call setpos('.',pos)
endfunction

autocmd Filetype mail command! Fixq call Fixflowed()

" Spelling
" Common Stuff
iab teh the
iab recieve receive

