ogmf.vim
========

Open git modified files in Vim.


Why don't do this?
------------------

    vim $(git status --porcelain | sed -ne 's/^ M //p')

Windows :anguished:
