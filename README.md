# ogmf.vim [![Build Status](https://travis-ci.org/attomos/le-manga.svg)](https://travis-ci.org/attomos/le-manga)


Open git modified files in Vim.


Why don't do this?
------------------

    vim $(git status --porcelain | sed -ne 's/^ M //p')

Windows :anguished:
