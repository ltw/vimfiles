function! CommandTWithFlush()
  CommandTFlush
  CommandT
endfunction

command! Marked silent !open -a Marked "%:p"
