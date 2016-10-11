if has("gui_macvim")
    set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline:h14
endif

set background=dark
colorscheme tender

if has("gui") && has("unix")
    set guioptions-=T  " Remove toolbar
    set columns=132
    set lines=60
endif

