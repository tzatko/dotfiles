
" I am using Janus by default. This is just fallback for at least a little bit
" sane defaults when Janus is not installed in the current .vimrc
if filereadable(expand("~/.vimrc.after"))
	  source ~/.vimrc.after
	endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
