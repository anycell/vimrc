" execute pathogen#infect()
set nu
set relativenumber
syntax on
set ignorecase
set smartcase
set backspace=indent,eol,start
set hidden " allow switch buffers without safe current buffer
" set ruler


set nocompatible              " be iMproved, required
filetype off                  " required

let python_highlight_all=1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'wincent/command-t'
Plugin 'Valloric/YouCompleteMe' 
Bundle 'scrooloose/syntastic'
Plugin 'ternjs/tern_for_vim'
Bundle 'majutsushi/tagbar'
Plugin 'grassdog/tagman.vim'
Plugin 'szw/vim-tags'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dyng/ctrlsf.vim'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Plugin 'nikvdp/ejs-syntax'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mattn/emmet-vim'
Plugin 'fatih/vim-go'
Plugin 'posva/vim-vue'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'

" vim-react-snippets:
Bundle "justinj/vim-react-snippets"
"Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"
" Bundle "craigemery/vim-autotag"

Bundle 'vim-ruby/vim-ruby'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'tpope/vim-endwise'
"
Plugin 'vim-scripts/indentpython.vim'

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" jsctags setting
nmap <F8> :TagbarToggle<CR>
" let g:tagbar_ctags_bin = "/usr/local/bin/jsctags"

" vim-javascript settings

 let g:javascript_plugin_jsdoc = 1
 let g:javascript_plugin_ngdoc = 1
 let g:javascript_plugin_flow = 1
" set foldmethod=syntax

autocmd Filetype javascript setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype html setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype ejs setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype yml setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype vue setlocal expandtab ts=2 sts=2 sw=2
autocmd Filetype python setlocal expandtab ts=4 sts=4 sw=4


:set completeopt=longest,menuone
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

let mapleader = ","

" nerdTree config
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <F2> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" autotags setting
" let g:autotagTagsFile = ".tags"

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = ['pylint']

 " TernDef mapping key
nnoremap <C-j> :TernDef<CR> 


let g:tagbar_type_javascript = {
    \ 'ctagsbin' : '/usr/local/bin/jsctags'
\ }


" markdown settting
let g:vim_markdown_folding_disabled = 1

"vim-jsx setting
let g:jsx_ext_required = 0

nnoremap gb :ls<CR>:b<Space>

" search in project
" filename search
nnoremap <Leader>sp :CtrlSF<CR>
let g:ctrlsf_default_view_mode = 'compact'

" ctrlP
" filename search
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
" latest filename search
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1


" ctrlp-funky
" function search
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_syntax_highlight = 1

let g:ctrlp_extensions = ['funky']

" ycm
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:user_emmet_settings = {
\  'ejs' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  }
\ }


let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-m>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme Zenburn
endif

map <F5> :call RunPython()<CR>
func! RunPython()
    exec "W"
    if &filetype == 'python'
        exec "!time python2.7 %"
    endif
endfunc

" let g:AutoClosePreserveDotReg = 0

" easymotion
let g:EasyMotion_smartcase = 1
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map <Leader><leader>. <Plug>(easymotion-repeat)
