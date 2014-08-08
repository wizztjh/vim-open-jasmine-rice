function OpenJasmineRice()

  let current_line = getline('.')
  " Define current indent level to a ridiculously large number.
  let current_indent_level = 1000
  let spec_string = ''

  " Get the closest 'it'/'describe' block, first check
  " the current line before doing a backward search.
  if matchstr(current_line, "\\v^\\s*(describe|it)") != ""
    let match_str = matchlist(current_line, "\\v['\"](.*)['\"]")[1]
    let spec_string = match_str

    let white_spaces = matchlist(current_line, "\\v^(\\s*)(describe|it)")[1]
    let current_indent_level = len(white_spaces)
  endif

  " Repeat backward search until we hit the
  " top describe block (indentation level 0)
  while current_indent_level > 0
    execute "normal! ?\\v^\\s*(describe|it)\<CR>"

    " Get the next previous line that starts with 'describe' and has less
    " indentation level
    let current_line = getline('.')
    let white_spaces = matchlist(current_line, "\\v^(\\s*)(describe|it)")[1]
    let line_indent_level = len(white_spaces)

    if line_indent_level < current_indent_level
      let current_indent_level = line_indent_level

      let match_str = matchlist(current_line, "\\v['\"](.*)['\"]")[1]
      let spec_string = match_str . ' ' . spec_string
    endif
  endwhile

  " Open Jasmine specs with the string
  let jasmine_http_url = "http://localhost:3000/jasmine?spec="

  let command_string = "open '" . jasmine_http_url . spec_string . "'"
  echom command_string
  call system(command_string)

endfunction

nnoremap <Leader>oj :call OpenJasmineRice()<CR>
