version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <M-Up> {
noremap! <M-Right> <C-Right>
noremap! <M-Left> <C-Left>
noremap <D-Down> <C-End>
noremap <D-Up> <C-Home>
noremap <D-Right> <End>
noremap <D-Left> <Home>
nmap gx <Plug>NetrwBrowseX
noremap <M-Down> }
noremap <M-Up> {
noremap <M-Right> <C-Right>
noremap <M-Left> <C-Left>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
vmap <BS> "-d
inoremap <D-BS> 
inoremap <D-Down> <C-End>
inoremap <D-Up> <C-Home>
noremap! <D-Right> <End>
noremap! <D-Left> <Home>
"nnoremap <silent> <ESC><ESC> :noh<CR>
nnoremap <silent> <ESC><ESC> :<C-u>nohlsearch<CR>

" Gtags
map <C-g> :Gtags
map <C-f> :Gtags -f %
map <C-r> :Gtags -r
map <silent> <C-n> :cn<CR>
map <silent> <C-p> :cp<CR>

" ctl+j -> ESC
inoremap <C-j> <ESC>
vnoremap <C-j> <ESC>
cnoremap <C-j> <ESC>

" ctl+k -> CR
inoremap <C-k> <CR>
cnoremap <C-k> <CR>

" tab creation and switch
nnoremap <silent> ss :tabnew<CR>
nnoremap <silent> sl :tabnext<CR>
nnoremap <silent> sh :tabprevious<CR>

nnoremap ; :
nnoremap : ;

let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set backspace=indent,eol,start
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=ja
set hlsearch
set ignorecase
set incsearch
set langmenu=none
set modelines=0
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set scrolloff=5
set shiftwidth=4
set smartcase
set smartindent
set softtabstop=7
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.class
set tabstop=4
set termencoding=utf-8
set window=0
syntax enable
colorscheme hybrid
set background=dark
set number
set ambiwidth=double
" vim: set ft=vim :

" Required:
set runtimepath+=/Users/aka/.cache/dein/repos/github.com/Shougo/dein.vim,/Users/aka/.cache/dein/repos/github.com/w0ng/vim-hybrid,/Users/aka

" Required:
call dein#begin('/Users/aka/.cache/dein/')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
call dein#add('w0ng/vim-hybrid')
call dein#add('gcorne/vim-sass-lint')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neoinclude.vim')
call dein#add('Shougo/unite.vim')
call dein#add('Shougo/vimproc.vim')
call dein#add('Shougo/vimfiler.vim')
call dein#add('Shougo/vimshell.vim')
call dein#add('rbtnn/game_engine.vim')
call dein#add('rbtnn/mario.vim')
call dein#add('thinca/vim-showtime')
call dein#add('TwitVim')
call dein#add('fuenor/im_control.vim')
call dein#add('justmao945/vim-clang')
call dein#add('fatih/vim-go')
call dein#add('aklt/plantuml-syntax')
call dein#add('vim-jp/vimdoc-ja')
call dein#add('thinca/vim-quickrun')
call dein#add('mattn/webapi-vim')
call dein#add('tyru/open-browser.vim')
call dein#add('plasticboy/vim-markdown')
call dein#add('kannokanno/previm')
call dein#add('superbrothers/vim-quickrun-markdown-gfm')
call dein#add('haya14busa/incsearch.vim')
call dein#add('papanikge/vim-voogle')
"call dein#add('scrooloose/syntastic')
call dein#add('scrooloose/syntastic', {'autoload': { 'filetypes': ['go', 'javascript', 'scss'] }})
call dein#add('joker1007/unite-pull-request')
call dein#add('s3rvac/vim-syntax-redminewiki')
call dein#add('toyamarinyon/vim-swift')
call dein#add('Lokaltog/vim-easymotion')

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif

"End dein Scripts-------------------------

" clang_complete configurations
let g:clang_periodic_quickfix = 1
let g:clang_auto = 0
let g:clang_c_completeopt   = 'menuone'
let g:clang_cpp_completeopt = 'menuone' 
let g:clang_check_syntax_auto = 1

" use neocomplete
" input patterns
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif

" for c and c++
let g:neocomplete#force_omni_input_patterns.c   = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*' 

let g:clang_complete_auto = 0
let g:clang_auto_select   = 0
let g:clang_use_library   = 1
let g:clang_library_path  = "/usr/local/opt/llvm/lib"

" neocomplete
let g:neocomplete#enable_at_startup     = 1
let g:neocomplete#enable_smart_case     = 1
let g:neocomplete#enable_ignore_case    = 1
let g:neocomplete#enable_camel_case     = 1
let g:neocomplete#use_vimproc           = 1
let g:neocomplete#enable_refresh_always = 1

" twitvim
let twitvim_browser_cmd = 'open' " for Mac
let twitvim_force_ssl = 1 
let twitvim_count = 40

" VimFielr
:let g:vimfiler_as_default_explorer = 1

" Open URI under cursor.
nmap gx <Plug>(openbrowser-open)
" " Open selected URI.
vmap gx <Plug>(openbrowser-open) 

" file explorer on left pain using VimFiler
"nnoremap <silent> sd :VimFilerBufferDir -split -simple -no-quit -winwidth=30 -toggle<CR>
nnoremap <silent> sd :VimFilerBufferDir -create -simple -no-quit -winwidth=30<CR>

" music player
"let s:start_afplay= {'is_selectable': 0}
"function! s:start_afplay.func(candidate)
"  call vimproc#system_bg("killall afplay")
"  call vimproc#system_bg('afplay -q 1 ' . '"'.a:candidate.action__path.'"')
"  echo "Playing... " . a:candidate.vimfiler__filename
"endfunction
"call unite#custom_action('file', 'afplay', s:start_afplay)
"unlet s:start_afplay

function! s:stop_afplay()
      call vimproc#system_bg("killall afplay")
endfunction
command! StopAfplay call s:stop_afplay()

autocmd! FileType vimfiler nnoremap <buffer><expr>af vimfiler#do_action('afplay')
nnoremap <silent>fa :<C-u>StopAfplay<CR>

" autoread configuration
set autoread
augroup vimrc-checktime
  autocmd!
  autocmd WinEnter * checktime
augroup END

" golang configuration
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
"let g:gocomplete#system_function = 'vimproc#system2'
"let g:go_fmt_command = "goimports"
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
exe "set rtp+=".globpath($GOPATH, "src/github.com/golang/lint/misc/vim")
let g:syntastic_go_checkers = ['go', 'golint', 'govet']
"let g:syntastic_go_checkers = ['go', 'golint', 'govet', 'errcheck']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

" markdown preview configuration
autocmd BufRead,BufNewFile *.mkd     set filetype=markdown
autocmd BufRead,BufNewFile *.md      set filetype=markdown
autocmd BufRead,BufNewFile *.textile set filetype=textile
autocmd BufRead,BufNewFile *.redmine set filetype=redminewiki
let g:previm_disable_default_css = 0
"let g:previm_custom_css_path = '~/.vim/bundle/previm/preview/css/lib/github.css'
let g:vim_markdown_folding_disabled = 1
" disable some highlight
autocmd! FileType markdown hi! def link markdownItalic Normal

" incsearch.vim
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

" nohl when move cursor
"let g:incsearch#auto_nohlsearch = 1
"map n  <Plug>(incsearch-nohl-n)
"map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)

" neosnippet configuration
" Plugin key-mappings.
"imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"smap <C-k>     <Plug>(neosnippet_expand_or_jump)
"xmap <C-k>     <Plug>(neosnippet_expand_target)
" 
"" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
"\ "\<Plug>(neosnippet_expand_or_jump)"
"\: "\<TAB>"
" 
"" For snippet_complete marker.
"if has('conceal')
"  set conceallevel=2 concealcursor=i
"endif

"function! s:ToggleDone(line)
"    if a:line =~ '^"*\s*\[D\]'
"       call setline('.', substitute(a:line, '\[D\]<.*>', '[ ]', ''))
"    else
"       call setline('.', substitute(a:line, '\[ \]', '[D]<'.strftime("%Y/%m/%d %H:%M").'>', ''))
"    endif
"endfunction
"command! -nargs=0 MyTaskToggle call s:ToggleDone(getline('.'))
"
"nnoremap <silent> mm :MyTaskToggle<CR>
"" [D]<2015/06/25 10:34> todo test

" vim-voogle
let g:search_engine  = 'https://www.google.co.jp/search?q='
let g:voogle_browser = 'firefox'

" plantuml-syntax
autocmd BufRead,BufNewFile *.pu,*.uml,*.plantuml set filetype=plantuml

" unite-pull-request
let g:github_user="aYosukeAkatsuka"
let g:github_token="214ff2cf5a04ec30c430a88e2f6b3f7950504f03"

"let g:HIPCHAT_TOKEN="Your"
"let g:HIPCHAT_DOMEIN="Your"

let g:syntastic_javascript_jslint_conf = "--white --undef --nomen --regexp --plusplus --bitwise --newcap --sloppy --vars"
let g:syntastic_javascript_checkers    = ['eslint']
let g:syntastic_css_checkers           = ['stylelint']
let g:syntastic_scss_checkers          = ['stylelint', 'sass_lint']
let g:syntastic_sass_checkers          = ['sass_lint']
