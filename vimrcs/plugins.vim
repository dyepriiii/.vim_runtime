" ======== pathogen =======
call pathogen#infect('~/.vim_runtime/plugins/{}')
call pathogen#helptags()

" ====== bufonly =====
nmap <leader>d :BufOnly<CR>

" ======= solarized ==========
let g:solarized_hitrail = 1
" !! IMPORTANT FOR TERMINAL
let g:solarized_termcolors=256

" ============= vim-airline =====
if has('gui_running')
    let g:airline_theme='solarized'
    let g:airline_powerline_fonts = 1
else
    let g:airline_theme='solarized'
    let g:airline_powerline_fonts = 1
endif

" =========== syntastic ============
let g:syntastic_aggregate_errors = 1

"""""""""""""""""""""""""""
" => VIMWIKI
"""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/Dropbox/vimwikis/dyeprii/', 'path_html': '~/Dropbox/vimwikis/dyeprii/html/', 'template_path': '~/Dropbox/vimwikis/dyeprii/templates'}, {'path': '~/Dropbox/vimwikis/everycity_/', 'path_html': '~/Dropbox/vimwikis/everycity_/html/', 'ext': '.everywiki'}]

""""""""""""""""""""""""""
" => nerdtreetabs
"""""""""""""""""""""""""
let g:nerdtree_tabs_open_on_gui_startup=0
let g:airline#extensions#tabline#enabled = 1

"""
" => vim-terraform
"""
let g:terraform_align=1
autocmd FileType terraform setlocal commentstring=#%s
