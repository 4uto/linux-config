set number
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
:set laststatus=2
"let g:instant_markdown_slow = 1
filetype plugin on
"let g:instant_markdown_open_to_the_world = 1
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()
