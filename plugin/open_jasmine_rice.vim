function OpenJasmineRice()
  execute "normal! gg?describe\<cr>N"
  let line=getline('.')

  let jasmine_describe_string= matchlist(line, "\\v['\"](.*)['\"]")[1]
  let jasmine_http_url = "http://localhost:3000/jasmine?spec="

  let command_string = "open '" . jasmine_http_url . jasmine_describe_string . "'"
  call system(command_string)

:endfunction

function OpenCurrentJasmine()

  "1. get the closest 'it'/'describe' block"
  "2. get the line's indentation level
  "3. get the next previous line that starts with 'describe' and has less
  "   indentation level
  "4. concatenate the two strings
  "5. repeat until we hit the top describe block (indentation level 0)
  "6. url encode the string and on top of that we will encode the hashes,
  "   question marks, exclamation mark and equal sign
  "7. open Jasmine specs with the string

endfunction

nnoremap <Leader>oj :call OpenJasmineRice()<CR>

