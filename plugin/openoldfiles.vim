function openoldfiles#List()
  enew
  nnoremap <buffer> <CR> :call openoldfiles#Open()<CR>
  nnoremap <buffer> <Esc> :bdelete!<CR>
  0put =v:oldfiles
  silent g/nvim\/runtime/d
  silent g/fugitive:\/\//d
  silent g/term:\/\//d
  1 " go to the beginning of the file
endfunction

function openoldfiles#Open()
  let l:filename = getline(".")
  bdelete!
  execute "edit ".l:filename
endfunction
