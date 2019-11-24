" Press F4 to toggle highlighting on/off, and show current value.
nmap <leader>tt a<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
noremap <F3> :NERDTreeTabsToggle<CR>
noremap <F4> :set hlsearch! hlsearch?<CR>
noremap <F5> :tabn<CR>
noremap <F6> :bn<CR>

set nu

if has('gui_running')
    colorscheme solarized
    set columns=120
    set lines=30
    set cursorline
else
    set background=dark
endif

if has('win32')
    set guifont=Sauce_Code_Powerline:h9:cANSI
else
    set guifont=Source\ Code\ Pro\ for\ Powerline\ 10
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim_runtime/vimrcs/my_config.vim<cr>
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrcs/my_config.vim


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" try
    set undodir=~/.undodir
    set undofile
    set undolevels =1000 "maximum number of changes that can be undone
    set undoreload =10000 "maximum number lines to save for undo on a buffer reload
" catch
" endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General abbreviations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

set cc=80
highlight colorcolumn ctermbg=30
highlight colorcolumn guibg=#073642

set lazyredraw
set noshowmode
set cmdheight=1
set shell=bash
set nofoldenable

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_puppet_checkers=['puppet']

" let &t_SI = "\<Esc>[6 q"
" let &t_SR = "\<Esc>[4 q"
" let &t_EI = "\<Esc>[2 q"

autocmd BufEnter *.yml set ai sw=2 ts=2 sta et fo=croql
