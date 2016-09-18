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

call EnsureBundleDirectoryExists()
call ClonePluginIfMissing("vim-sensible", "git://github.com/tpope/vim-sensible.git")
call ClonePluginIfMissing("vim-vividchalk", "git://github.com/tpope/vim-vividchalk.git")
call ClonePluginIfMissing("vim-colors-solarized", "https://github.com/altercation/vim-colors-solarized.git")
call ClonePluginIfMissing("vim-fugitive", "git@github.com:tpope/vim-fugitive.git")
call ClonePluginIfMissing("supertab", "https://github.com/ervandew/supertab.git")
call ClonePluginIfMissing("nerdtree", "https://github.com/scrooloose/nerdtree.git")
call ClonePluginIfMissing("vim-livedown", "git@github.com:shime/vim-livedown.git")
call ClonePluginIfMissing("Dockerfile.vim", "https://github.com/ekalinin/Dockerfile.vim.git")
call ClonePluginIfMissing("vim-options", "git@github.com:olesu/vim-options.git")
call ClonePluginIfMissing("vim-keymap", "git@github.com:olesu/vim-keymap.git")
call ClonePluginIfMissing("editorconfig-vim", "https://github.com/editorconfig/editorconfig-vim.git")
call ClonePluginIfMissing("tender", "https://github.com/jacoborus/tender.vim")
call DownloadPathogenIfMissing()

execute pathogen#infect()

syntax on
filetype plugin indent on

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

