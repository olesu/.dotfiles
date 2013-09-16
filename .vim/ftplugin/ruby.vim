compiler ruby
setlocal makeprg=ruby\ -wc\ %

set relativenumber
set autoindent 
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab


set foldmethod=syntax

imap <S-CR> <CR><CR>end<Esc>-cc

