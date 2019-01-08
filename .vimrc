" Aint nobody got time for ESCAPE-ing
:imap jk <Esc>
:imap kj <Esc>
:imap ;; <Esc>
:imap ii <Esc>

" Yeah this shit was annoying af
:command WQ wq
:command Wq wq
:command W w
:command Q q  

" Line numbers yay
set number

" Set horizontal tracer
set cursorline

" PATHOGEN PLUGIN MANAGER
"set nocp
" execute pathogen#infect()
" call pathogen#helptags()

" NERDtree
" :map <C-n> :NERDTreeToggle<CR>
" autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Filetype Indentation Things
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType sh setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=3 tabstop=3
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" Default color
color eink

" Filetype Color Things
autocmd BufEnter *.php colorscheme Tomorrow-Night
autocmd BufEnter *.py colorscheme zenburn "Tomorrow
autocmd BufEnter *.json colorscheme pink  "dual woju pink bluedrake moss muon wikipedia
autocmd BufEnter .vimrc colorscheme Tomorrow-Night-Blue
autocmd BufEnter *.js colorscheme miko "mayansmoke
autocmd BufEnter *.tf colorscheme donttouchme "woju
autocmd BufEnter *.txt colorscheme nofrils-acme
autocmd BufEnter *.html colorscheme Tomorrow-Night-Eighties
"autocmd BufEnter *.sh colorscheme newspaper
autocmd BufEnter *.sh colorscheme messy "tatami
autocmd BufEnter *.bash* colorscheme messy "tatami
autocmd BufEnter .tmux.conf colorscheme astronaut "muon
autocmd BufEnter *.md colorscheme PaperColor
autocmd BufEnter *config colorscheme madeofcode

" == Light backgrounds ==
set background=light

set expandtab
set autoindent

" reduce the buffer caused by .swp files / risky for data loss though
set nobackup
set noswapfile
set dir=/tmp    "this sets swp files to /tmp 

" HTML syntax highlighting
highlight link htmlTag htmlTagName
highlight link htmlEndTag htmlTagName

" tmux italics fix
set t_ZH=[3m
set t_ZR=[23m
