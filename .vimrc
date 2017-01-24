set nocompatible              " be iMproved, required
filetype off                  " required
syntax on                     " allows syntax in terminal
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugin manager for vim
Plugin 'VundleVim/Vundle.vim'

" linter for Javascript
Plugin 'scrooloose/syntastic'

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_aggregate_errors = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_highlighting = 1
let g:syntastic_mode_map = { 'mode': 'passive',
                            \ 'passive_filetypes': ['ruby', 'javascript'] }

" bracket and parentheses formatter
" Plugin 'Raimondi/delimitMate'
" let delimitMate_expand_cr=1

" status bar
Plugin 'vim-airline/vim-airline'

" autocompletion
Plugin 'Valloric/YouCompleteMe'
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" allows YouCompleteMe autocompletion for javascript
Plugin 'ternjs/tern_for_vim'

" javascript syntax highlighting
Plugin 'jelera/vim-javascript-syntax'
hi link javaScriptTemplateVar Identifier
hi link javaScriptTemplateString String
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" Markdown
" Plugin 'plasticboy/vim-markdown'
" let g:vim_markdown_folding_disabled = 1

" file manager
Plugin 'scrooloose/nerdtree'
autocmd vimenter * NERDTree
let NERDTreeShowHidden=0
map <silent> <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>

" fuzzy finder
Plugin 'wincent/command-t'
let g:CommandTMaxHeight = 30
let g:CommandTMaxFiles = 500000
let g:CommandTTraverseSCM = 'pwd'

" better JSON
Plugin 'elzr/vim-json'

" keymappings
Plugin 'tpope/vim-unimpaired'

" Ruby
Plugin 'vim-ruby/vim-ruby'

" Plugin 'tpope/vim-rails'

Plugin 'w0ng/vim-hybrid'

" HTML
Plugin 'mattn/emmet-vim'

call vundle#end()            " required
filetype plugin indent on    " required

set number
set linespace=1
set showtabline=2

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" colorscheme
set background=dark
colorscheme hybrid
set guifont=Monaco

" fixes issue with regex engine for Vim 7.4
" set regexpengine=1

" ruby path if you are using rbenv
let g:ruby_path = system('echo $HOME/.rbenv/shims')

set colorcolumn=80

"aliases
command NT NERDTree
command CT CommandT
command SR SyntasticReset
command SC SyntasticCheck
command ER Errors

"terminal coloring
set term=screen-256color
