function! IsMissing (path)
    return empty(glob(a:path))
endfunction

function! DownloadPathogen ()
    echom "downloading pathogen and quitting vim"
    call system("mkdir -p " . $HOME . "/.vim/autoload ")
    call system("curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim")
    confirm qa
endfunction

function! DownloadPathogenIfMissing()
    if IsMissing("~/.vim/autoload/pathogen.vim")
	call DownloadPathogen()
    endif
endfunction

function! ClonePlugin(plugin, url) 
    echom "cloning " . a:plugin . " plugin into bundle directory"
    call system("cd " . $HOME . "/.vim/bundle && git clone " . a:url)
endfunction

function! ClonePluginIfMissing(plugin, url) 
    if IsMissing("~/.vim/bundle/" . a:plugin)
	call ClonePlugin(a:plugin, a:url)
    endif
endfunction

function! EnsureBundleDirectoryExists()
    if IsMissing("~/.vim/bundle")
	call system("mkdir -p " . $HOME . "/.vim/bundle")
    endif
endfunction

echo "Welcome to Vim!"

call EnsureBundleDirectoryExists()
call ClonePluginIfMissing("vim-sensible", "git@github.com:olesu/vim-sensible.git")
call ClonePluginIfMissing("vim-vividchalk", "git://github.com/tpope/vim-vividchalk.git")
call DownloadPathogenIfMissing()

execute pathogen#infect()

syntax on
filetype plugin indent on

