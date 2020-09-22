call plug#begin()

"" UI related 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 


" Plug 'morhetz/gruvbox'
Plug 'sainnhe/vim-color-forest-night'

" Lightline Configuration for Forest Night
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/artify.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'macthecadillac/lightline-gitdiff'
Plug 'maximbaz/lightline-ale'
Plug 'albertomontesg/lightline-asyncrun'
Plug 'rmolin88/pomodoro.vim'

" Better Visual Guide
Plug 'Yggdroot/indentLine'

" Syntax check
Plug 'w0rp/ale'

" Autocomplete
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'mattn/emmet-vim' " HTML and CSS 
Plug 'jvanja/vim-bootstrap4-snippets'

" Formater
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs' " Autoclose {} [] ()

" Tree
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Settings
Plug '907th/vim-auto-save' " Autosave
Plug 'preservim/nerdcommenter' " Commenting

" Git
Plug 'airblade/vim-gitgutter'

" Langs
Plug 'sheerun/vim-polyglot'

" Search
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()

set termencoding=utf-8 "Кодировка терминала

"colorscheme

"Forest Night
" the configuration options should be placed before `colorscheme forest-night`
let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 1

colorscheme forest-night

"gruverbox
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"Plug preservim/nerdcommenter
let g:auto_save = 1  " enable AutoSave on startup

"Plug preservim/nerdcommenter
let g:NERDCompactSexyComs = 1
let g:NERDAltDelims_python = 1
let g:NERDAltDelims_html = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

filetype plugin indent on


map <C-n> :NERDTreeToggle<CR>

"Configurations Part
" UI configuration
syntax on
"syntax enable


set number
set wrap
set linebreak 
"set relativenumber
set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8 " Кодировка файлов по умолчанию
set fileencodings=utf8,cp1251

" Turn off backup
"set nobackup
"set noswapfile
"set nowritebackup
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

let python_highlight_all = 1
" Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

set t_co=256

let g:airline_theme = 'forest_night'
let g:lightline = {'colorscheme' : 'forest_night'}


" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" Navigate around splits with a single key combo.
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-j> <C-w><C-j>

" Cycle through splits.
nnoremap <S-Tab> <C-w>w

" Splits
map <C-h> :vertical resize -5<CR>
map <C-l> :vertical resize +5<CR>

