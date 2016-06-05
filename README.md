# ogmf.vim [![Build Status](https://travis-ci.org/attomos/ogmf.vim.svg)](https://travis-ci.org/attomos/ogmf.vim)


Open git modified files in Vim.


# Usage
```vim
" open git modified files in buffers
:OGMF

" open git modified files in tabs
:OGMF!

" or map to some key binding, mine is
nnoremap <Leader>M :OGMF<CR>
```

Why don't do this?
------------------

    vim $(git status --porcelain | sed -ne 's/^ M //p')

Windows :anguished:


License
-------

MIT
