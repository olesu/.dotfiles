if has("gui_macvim")
    set guifont=Menlo:h14
endif

colorscheme vividchalk

if has("gui") && has("unix")
    set guioptions-=T  " Remove toolbar
    set columns=132
    set lines=60
endif

