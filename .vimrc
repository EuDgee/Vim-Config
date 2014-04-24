set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set t_Co=256
autocmd FileType javascript set colorcolumn=80

colorscheme gruvbox
if !has("gui_running")
  let g:gruvbox_italic = 0
endif
set background=dark

map <C-n> :NERDTreeToggle<CR>

let g:syntastic_check_on_open = 1
let g:syntastic_enable_highlighting = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_mode_map = { 'mode': 'active',
	\ 'active_filetypes': [],
	\ 'passive_filetypes': ['html'] }
let g:syntastic_enable_javascript_checker = 1
let g:syntastic_javascript_checkers = ['gjslint']
let g:syntastic_javascript_gjslint_conf = ' --strict --custom_jsdoc_tags=namespace,event'
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'

