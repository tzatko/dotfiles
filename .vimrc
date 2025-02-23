
if filereadable(expand("~/.vimrc.after"))
	  source ~/.vimrc.after
	endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
