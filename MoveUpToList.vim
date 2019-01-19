function ! MoveEm(position)
let saved_cursor =getpos(".")
let previous_blank_line=search('^$','bn')
let target_line=previous_blank_line+a:position-1
execute 'move'.target_line
call setpos('.',saved_cursor)
end function

nnoremap m1:normal! kmmjdd{p`m<cr>
nnoremap <leader>sop :source %<cr>