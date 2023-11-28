function openoldfiles#List()
  enew
  nnoremap <buffer> <CR> <cmd>call openoldfiles#Open()<CR>
  nnoremap <buffer> <Esc> <cmd>bdelete!<CR>
  0put =v:oldfiles
  silent g/nvim\/runtime/d
  silent g/vim\/vimfiles/d
  silent g/fugitive:\/\//d
  silent g/term:\/\//d
  1 " go to the beginning of the file
endfunction

function openoldfiles#Open()
  let l:filename = getline(".")
  silent bdelete!
  execute "edit ".l:filename
endfunction
