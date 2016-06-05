function ogmf#get_git_modifiled_files()
  let arr = split(system('git status --porcelain --untracked-files=all'), "\n")
  " Modifiled/Added/Deleted/Untracked
  let l = map(copy(arr), 'substitute(v:val, "\\s\\?[M|A|D|\\?]\\+\\s", "", "")')
  " Renamed
  let l2 = map(copy(l), 'substitute(v:val, "\\s\\?R.\\+->\\s", "", "")')
  return l2
endfunction

function ogmf#open()
  let l = ogmf#get_git_modifiled_files()
  execute 'argadd' join(l, ' ')
  echo 'Opened git modified files.'
endfunction

command OpenGitModifiedFiles call ogmf#open()
command OGMF call ogmf#open()
