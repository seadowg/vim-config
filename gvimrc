" POWERLINE
set guifont=Monaco:h13

" Change spelling highlight options
highlight SpellBad term=underline gui=undercurl guisp=Orange

" MacVim
if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Hide Top Bar and other UI cruft
  set guioptions-=T
  set guioptions-=T
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R

  " Different cursors for different modes.
  set guicursor=n-c:block-Cursor-blinkon0
  set guicursor+=v:block-vCursor-blinkon0

  " Command-F for Ack
  macmenu Window.Toggle\ Full\ Screen\ Mode key = <nop>
  map <D-F> :Ack<space>

  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>

  " Command-][ to increase/decrease indentation
  vmap <D-]> >gv
  vmap <D-[> <gv
endif

