let s:fontsize = 14
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! Consolas:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

noremap <C-+> :call AdjustFontSize(1)<CR>
"noremap <C-k> :call AdjustFontSize(-1)<CR>
inoremap <C-+> <Esc>:call AdjustFontSize(1)<CR>a
"inoremap <C-k> <Esc>:call AdjustFontSize(-1)<CR>a

colorscheme gruvbox
