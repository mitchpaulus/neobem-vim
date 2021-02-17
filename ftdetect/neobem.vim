" See 43.2 'Adding a filetype' of the nvim help
augroup filetypedetect
autocmd BufRead,BufNewFile *.bemp,*.nbem set filetype=nbem
augroup END
