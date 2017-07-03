" Shortcuts for vim nose tests
let g:vimux_nose_setup_cmd="vagrant ssh; if [ -d /ebs/appvenmo/venmo_tests ] ; then cd /ebs/appvenmo/venmo_tests; else cd /vagrant; fi"
let g:vimux_nose_options=''

map <leader>rs :call VimuxRunNoseSetup()<CR>
map <leader>ri :call VimuxInspectRunner()<CR>
map <leader>rc :call VimuxCloseRunner()<CR>

map <leader>ra :call VimuxRunNoseAll()<CR>
map <leader>rF :call VimuxRunNoseFile()<CR>
map <leader>rC :call VimuxRunNoseFocusClass()<CR>
map <leader>rf :call VimuxRunNoseFocus()<CR>
map <leader>rl :call VimuxRunNoseLine()<CR>
map <leader>rr :call VimuxRunLastCommand()<CR>

function! VimuxRunNoseFocus()
  let test_focus = _nose_test_search("class ")

  if test_focus == ""
    echoerr "Couldn't find test class to run focused test."
    return
  endif

  let test_name = _nose_test_search("def test_")

  if test_name != ""
    let test_focus .= "." . test_name
  endif

  call VimuxRunCommand("nosetests " . g:vimux_nose_options . " " . expand("%") . ":" . test_focus)
endfunction

function! VimuxRunNoseFocusClass()
  let test_focus = _nose_test_search("class ")

  if test_focus == ""
    echoerr "Couldn't find test class to run focused test."
    return
  endif

  call VimuxRunCommand("nosetests " . g:vimux_nose_options . " " . expand("%") . ":" . test_focus)
endfunction

function! _nose_test_search(fragment)
  let line_num = search(a:fragment, "bsW")
  if line_num > 0
    ''
    return split(split(getline(line_num), " ")[1], "(")[0]
  else
    return ""
  endif
endfunction

