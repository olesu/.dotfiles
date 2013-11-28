let mapleader = ","
let maplocalleader = ";"

source ~/.vim/vimrc

" Colors {{{
set background=dark
colorscheme vividchalk
" }}}

" Generally useful settings {{{
set omnifunc=syntaxcomplete#Complete
set visualbell
set noerrorbells
" }}}


" Keybindings {{{
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>
nnoremap <Leader>nt :NERDTreeToggle<cr>
nnoremap <Leader>cd :cd %:p:h<cr>

inoremap jj <Esc>
" }}}

" FileType autocmds {{{
autocmd FileType html,xhtml setl omnifunc=htmlcomplete#CompleteTags
autocmd FileType css setl omnifunc=csscomplete#CompleteCSS
autocmd FileType js setl omnifunc=javascriptcomplete#CompleteJS

autocmd FileType vim setl foldmethod=marker
" }}}


