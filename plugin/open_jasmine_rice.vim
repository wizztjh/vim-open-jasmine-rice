function OpenJasmineRice()
  execute "normal! gg?describe\<cr>N"
  let line=getline('.')

  let jasmine_describe_string= matchlist(line, "\\v['\"](.*)['\"]")[1]
  let jasmine_http_url = "http://localhost:3000/jasmine?spec="


  let command_string = "open '" . jasmine_http_url . jasmine_describe_string . "'"
  call system(command_string)

:endfunction

nnoremap <Leader>oj :call OpenJasmineRice()<CR>

