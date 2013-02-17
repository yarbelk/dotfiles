"" Plugins to use
" GunDo
" Fugitve
" CommandT
" Python-mode
" Snipmate
"
" leader -> ,
" rebind split moving to <ctrl>+hjkl
"
" ============================================================================

set nocompatible
let mapleader=","

command! W :w


" Python breakpoint - trying the ropemode version
" map <Leader>b Oimport ipdb; ipdb.set_trace()  #BREAKPOINT<Esc><CR>

" sudo write this
cmap W! w !sudo tee % >/dev/null

" quit window on <leader>q
map <leader>q :q<CR>

" Moving between tabs
map <leader>T :tabNext<CR>

" Relative line numbering
set relativenumber
au FocusLost * :set number<CR>
au FocusGained * :set relativenumber<CR>

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" ctrl-hjkl changes to that split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" <C-W> hjkl to change in insert mode
imap <C-W> <C-O><C-W>

" GunDo open split
map <leader>g :GundoToggle<CR>

" CommandT commands
" open window
nmap <leader>f :CommandT<CR>
nmap <leader>F :CommandTFlush<CR>

"" Pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
"
"""" Display
colorscheme oceandeep

"""" Messages, Info, Status
set ls=2                    " allways show status line
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set confirm                 " Y-N-C prompt if closing with unsaved changes.

"" Python Mode

" indents
set nowrap                  " don't wrap text
set autoindent              " always set autoindenting on
set tabstop=4               " <tab> inserts 4 spaces 
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.

" incremental searching
set incsearch

" don't outdent comments
inoremap # X<C-H>#

" Don't run pylint every save.
let g:pymode_lint_wite = 0

" key bindings
let g:pymode_run_key = '<leader>r'
let g:pymode_lint_cheker = "pep8,django-lint"

" rope
let g:pymode_rope = 1

nmap <leader>j <C-c>g

" Autocreate and open rope project
let g:pymode_rope_auto_project = 1

" Enable autoimport
let g:pymode_rope_enable_autoimport = 1

" global cache
let g:pymode_rope_autoimport_generate = 1

let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_guess_project = 1
let g:pymode_rope_always_show_complete_menu = 0

" code folding
let g:pymode_folding = 1

" enable python motions ? guessing word_definition vs word-definition
let g:pymode_motion = 1

" VirtualEnv
let g:pymode_virtualenv = 1

" breakpoints 
let g:pymode_breakpoint = 1

"" Syntax
let g:pymode_syntax = 1

set colorcolumn=79
