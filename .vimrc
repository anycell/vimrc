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
Plugin 'nikvdp/ejs-syntax'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'mattn/emmet-vim'

" vim-react-snippets:
Bundle "justinj/vim-react-snippets"
Bundle "SirVer/ultisnips"
Bundle "honza/vim-snippets"
Bundle "craigemery/vim-autotag"

Bundle 'vim-ruby/vim-ruby'
"Bundle 'tpope/vim-endwise'

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

 :set completeopt=longest,menuone
 :inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

 " autotags setting
 let g:autotagTagsFile = ".tags"

 " syntastic settings
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

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
" nnoremap <Leader>sp :CtrlSF<CR>

let g:user_emmet_settings = {
\  'ejs' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  }
\ }
