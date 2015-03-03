function! IsMissing (path)
	return empty(glob(a:path))
endfunction

function! DownloadPathogen ()
	echom "downloading pathogen and quitting vim"
	call system("mkdir -p " . $HOME . "/.vim/autoload ")
	call system("curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim")
	confirm qa
endfunction

function! CloneSensible() 
	echom "cloning vim-sensible plugin into bundle directory"
	call system("cd " . $HOME . "/.vim/bundle && git clone git://github.com/tpope/vim-sensible.git")
endfunction

echo "Welcome to Vim!"

if IsMissing("~/.vim/bundle/sensible")
	call CloneSensible()
endif

if IsMissing("~/.vim/autoload/pathogen.vim")
	call DownloadPathogen()
endif
execute pathogen#infect()

syntax on
filetype plugin indent on

