function openoldfiles#List()
  enew
  nnoremap <buffer> <CR> <cmd>call openoldfiles#Open()<CR>
  nnoremap <buffer> <Esc> <cmd>bdelete!<CR>
  0put =v:oldfiles
  silent g/nvim\/runtime/d _
  silent g/vim\/vimfiles/d _
  silent g/fugitive:\/\//d _
  silent g/term:\/\//d _
  1 " go to the beginning of the file
endfunction

function openoldfiles#Open()
  let l:filename = getline(".")
  silent bdelete!
  execute "edit ".l:filename
endfunction
