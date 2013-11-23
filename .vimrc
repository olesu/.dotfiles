execute pathogen#infect()
" General settings {{{

" Colors {{{
set background=dark
colorscheme vividchalk
" }}}

" Generally useful settings {{{
set nocompatible
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete
set visualbell
set hlsearch
" }}}

" Statusline {{{
set laststatus=2		" always display statusline
"statusline setup
set statusline =%#identifier#
set statusline+=[%t]    "tail of the filename
set statusline+=%*

"display a warning if fileformat isnt unix
set statusline+=%#warningmsg#
set statusline+=%{&ff!='unix'?'['.&ff.']':''}
set statusline+=%*

"display a warning if file encoding isnt utf-8
set statusline+=%#warningmsg#
set statusline+=%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
set statusline+=%*

set statusline+=%h      "help file flag
set statusline+=%y      "filetype

"read only flag
set statusline+=%#identifier#
set statusline+=%r
set statusline+=%*

"modified flag
set statusline+=%#identifier#
set statusline+=%m
set statusline+=%*

set statusline+=%{fugitive#statusline()}

"display a warning if &et is wrong, or we have mixed-indenting
set statusline+=%#error#
"set statusline+=%{StatuslineTabWarning()}
set statusline+=%*

"set statusline+=%{StatuslineTrailingSpaceWarning()}

"set statusline+=%{StatuslineLongLineWarning()}

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"display a warning if &paste is set
set statusline+=%#error#
set statusline+=%{&paste?'[paste]':''}
set statusline+=%*

set statusline+=%=      "left/right separator
"set statusline+=%{StatuslineCurrentHighlight()}\ \ "current highlight
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" }}}

" Keybindings {{{
let mapleader = ","
let maplocalleader = ";"

nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>
nnoremap <Leader>nt :NERDTreeToggle<cr>
nnoremap <Leader>cd :cd %:p:h<cr>

inoremap jj <Esc>
" }}}

" set cmdheight to avoid "hit enter" prompts {{{
set cmdheight=2
" }}}

" FileType autocmds {{{
autocmd FileType html,xhtml setl omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setl omnifunc=csscomplete#CompleteCSS
autocmd FileType js setl omnifunc=javascriptcomplete#CompleteJS
" }}}

redraw
echom "VIM initialization done."

