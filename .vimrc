execute pathogen#infect()
" General settings {{{

" Colors {{{
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
" }}}

" Generally useful settings {{{
set nocompatible
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set omnifunc=syntaxcomplete#Complete
" }}}

" Statusline {{{
set laststatus=2		" always display statusline
set statusline=%t		" filename
set statusline+=%m		" modified flag
set statusline+=%r		" readonly flag
set statusline+=%y		" type of file in the buffer
set statusline+=%=		" separation point between left and right
set statusline+=%1*Buf\ #%-n%0*	" buffer number
set statusline+=%5l/%-3c	" line number/column number
" }}}

let mapleader = "-"
let maplocalleader = "_"

" Keybindings {{{
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>
" }}}

" set cmdheight to avoid "hit enter" prompts
set cmdheight=2
" }}}

autocmd FileType html,xhtml setl omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setl omnifunc=csscomplete#CompleteCSS
autocmd FileType js setl omnifunc=javascriptcomplete#CompleteJS

redraw
echom "VIM initialization done."

