
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
set nocp
execute pathogen#infect()
call pathogen#helptags()

" NERDtree
:map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Filetype Indentation Things
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType json setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=3 tabstop=3
