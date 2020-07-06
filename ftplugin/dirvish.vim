" \F4 = close dirvish window
nmap <buffer> <leader><F4> :close<CR>

" Esc close dirvish buffer
nmap <buffer> <Esc> gq

" cd = cd (dirvish)
nmap <buffer> cd :execute 'cd ' . expand('%')<bar>:pwd<CR>

" md = mkdir (dirvish)
nmap <buffer> md :!mkdir %/

" cp = copy file under cursor (dirvish)
nmap <buffer> cp :!cp "<cfile>" 

" mv = move file under cursor (dirvish)
nmap <buffer> mv :!mv "<cfile>" 

" rm = delete file under cursor (dirvish)
nmap <buffer> rm :!rm -i "<cfile>" <CR>

" pw = show directory 
" nmap <buffer> pw :pwd<CR>

" open file under cursor in new tab (dirvish)
nnoremap <buffer> <silent> t :call dirvish#open('tabedit', 0)<CR>
xnoremap <buffer> <silent> t :call dirvish#open('tabedit', 0)<CR>

nmap <buffer><nowait><silent> <CR> :<C-U>call dirvish#open("edit", 0)<CR>:echo(expand('%'))<CR>
