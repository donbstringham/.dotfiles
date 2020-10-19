" all status line configuration goes here
set cmdheight=1
set display+=lastline

" general config
set laststatus=2 " always show status line
set showtabline=2 " always show tabline
set noshowmode " hide default mode text (e.g. INSERT) as airline already displays it

" syntastic
set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" airline
let g:airline_theme = 'solarized'
"let g:airline_solarized_bg = 'light'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1

set encoding=UTF-8
set guifont=Fira\ Code\ Retina\ Nerd\ Font\ 14
"set guifont=GoMono\ Nerd\ Font\ Book\ 15
"set guifont=JetBrainsMono\ Nerd\ Font\ 15

