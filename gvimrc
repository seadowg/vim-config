" MacVim
if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " Hide Top Bar
  set guioptions-=T

  " Command-T for CommandT
  macmenu &File.New\ Tab key = <nop>
  map <D-t> :CtrlPMixed<cr>

  " Command-F for Ack
  macmenu Window.Toggle\ Full\ Screen\ Mode key = <nop>
  map <D-F> :Ack<space>

  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>

  " Command-][ to increase/decrease indentation
  vmap <D-]> >gv
  vmap <D-[> <gv
endif
