" git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

" install plugins
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle/')

Plugin 'VundleVim/Vundle.vim'

" color schemes
Plugin 'flazz/vim-colorschemes'

" status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" old
" Plugin 'itchyny/lightline.vim'

" nerdtree
Plugin 'preservim/nerdtree'

" icons
Plugin 'ryanoasis/vim-devicons'

" Themes
Plugin 'chriskempson/base16-vim'
Plugin 'ErichDonGubler/vim-sublime-monokai'


" for Languages

" Markdown
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'godlygeek/tabular'
Plugin 'preservim/vim-markdown'

" Autocomplit code
Plugin 'neoclide/coc.nvim'

" Python
" plugin working only nvim
Plugin 'numirias/semshi'
" standard pep-8
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'tmhedberg/SimpylFold'

" AutoComment
Plugin 'preservim/nerdcommenter'
" old
" Plugin 'tpope/vim-commentary'

" Class structure viewer
Plugin 'preservim/tagbar'

" Syntax highlighting
Plugin 'sheerun/vim-polyglot'

" CSS
Plugin 'ap/vim-css-color'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'hail2u/vim-css3-syntax'

" HTML
Plugin 'AndrewRadev/tagalong.vim'
Plugin 'mattn/emmet-vim'

" JS
Plugin 'pangloss/vim-javascript'

" Syntastic
Plugin 'vim-syntastic/syntastic'

" Navigation on code
Plugin 'mileszs/ack.vim'
Plugin 'pechorin/any-jump.vim'

" branches
Plugin 'tpope/vim-surround'

" bracket highlighting
Plugin 'frazrepo/vim-rainbow'

" ansible
Plugin 'pearofducks/ansible-vim'

call vundle#end()

" Подсветка синтаксиса
syntax on
" Табуляция автоматически преобразуется в пробелы
set expandtab
" Количество пробелов в табе
set tabstop=4
" В режиме редактирования нажмите клавишу возврата, чтобы вернуться к длине с отступом.
set softtabstop=4
" Длина каждого уровня замка
set shiftwidth=4
" Копирует отступы с текущей строки при добавлении новой
set autoindent
" Автоматически доставляет отступы в нужных местах
set smartindent
" Выделить 'Найти совпадение'
set hlsearch
" Показать совпадения
set showmatch
" Начало отображения строки состояния
set laststatus=2
" Показать команды ввода
set showcmd
"Включить нумерацию
set number
" Относительные номера строк
set relativenumber
" количество букв сколько можно вместить на строку
set colorcolumn=100
" Включает определение типа файла, загрузку соответствующих ему плагинов и файлов отступов
filetype on
filetype plugin on
filetype plugin indent on
" Перенос длинных строк
set wrap
" Подвсветка текущей строки
set cursorline
" Без бэкапов
set nobackup
" Без свап файлов
set noswapfile
" Перенос по словам
set linebreak
" Подсветить поиск
set ic
" текущий буфер можно перевести в фоновый режим
set hidden
" Отключает обратную совместимость с Vi
set nocompatible
" высота панели команд
set cmdheight=1

set encoding=UTF-8

set updatetime=50
set shellslash
set smarttab
set expandtab

let python_highlight_all=1
set t_Co=256

highlight BadWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp match BadWhitespace /\s\+$/


set termencoding=utf-8
set novisualbell
set t_vb=
set backspace=indent,eol,start whichwrap+=<,>,[,]
set showtabline=1


set fileencodings=utf8

set clipboard=unnamed
set incsearch
set ignorecase

" ?????????????????????????????????????
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>

" copy in clipboard
noremap <Leader>yy "+yy
noremap <Leader>y "+y
noremap <Leader>p "+p
noremap <Leader>P "+P

" AD
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Вместо esc
imap jj <Esc>

" Совместимость с русской клавиатурой
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz


" Settings Plugins

" .............................................................................
" chriskempson/base16-vim
" .............................................................................

set termguicolors


" .............................................................................
" vim-airline/vim-airline
" .............................................................................

let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:Powerline_symbols='unicode'

"Airline Themes
let g:airline_theme='badwolf'
" let g:airline_theme='dark'
" let g:airline_theme='ravenpower'
" let g:airline_theme='simple'
" let g:airline_theme='term'
" let g:airline_theme='ubaryd'
" let g:airline_theme='laederon'
" let g:airline_theme='kolor'
" let g:airline_theme='molokai'
" let g:airline_theme='powerlineish'

let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = ':'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = ''
"let g:airline_symbols.colnr = ' :'
let g:airline_symbols.colnr = '  ℅:'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = ''
let g:airline_right_alt_sep = '⮃'
"let g:airline_right_sep = '⮂'
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.colnr = ' ㏇:'
"let g:airline_symbols.colnr = ' ℅:'
"let g:airline_symbols.colnr = ':'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.linenr = ' ␊:'
"let g:airline_symbols.linenr = ' ␤:'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = '㏑'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = 'Ɇ'

let g:webdevicons_enable_airline_statusline_fileformat_symbols=0


" .............................................................................
" iamcco/markdown-preview.nvim
" .............................................................................

let g:mkdp_auto_close=0
let g:mkdp_refresh_slow=1


" .............................................................................
" preservim/nerdtree
" .............................................................................

nmap <C-g> :NERDTree<CR>
vmap <C-g> <ESC>:NERDTree<CR>i
imap <C-g> <ESC>:NERDTree<CR>i
nmap <C-g>x :NERDTreeClose<CR>
vmap <C-g>x <ESC>:NERDTreeClose<CR>i
imap <C-g>x <ESC>:NERDTreeClose<CR>i


" .............................................................................
" ErichDonGubler/vim-sublime-monokai
" .............................................................................

set guifont=Monaco:h18
set background=dark
colorscheme sublimemonokai
" colorscheme gruvbox
" colorscheme OceanicNext
" colorscheme wombat256
" colorscheme tango
" colorscheme railscasts
" colorscheme vividchalk
" colorscheme distinguished
" colorscheme molokai
" colorscheme ir_black
" colorscheme neodark
" colorscheme kolor
" colorscheme gotham
" colorscheme jellybeans
" colorscheme desertEx
" colorscheme skittles_berry
" colorscheme skittles_dark
" colorscheme codeblocks_dark


" .............................................................................
" preservim/tagbar
" .............................................................................

nmap <F7> :TagbarToggle<CR>
nmap <F8> :TagbarOpen f<CR>

" .............................................................................
" iamcco/markdown-preview.nvim
" .............................................................................

" nmap <C-m> :MarkdownPreview<CR>


" .............................................................................
" vim-syntastic/syntastic
" .............................................................................

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pylint', 'flake8']


" .............................................................................
" mileszs/ack.vim
" .............................................................................

noremap <F4> :Ack! <cword> --ignore-dir={static,logs,files}<cr>
noremap <S-F4> :Ack! --ignore-dir={static,logs,files}


" .............................................................................
" preservim/nerdcommenter
" .............................................................................

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

"" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
" let g:NERDAltDelims_java = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" .............................................................................
" mattn/emmet-vim
" .............................................................................

"enable all function in all mode.
let g:user_emmet_mode='a'


" .............................................................................
" neoclide/coc.nvim
" .............................................................................

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"COC
let g:coc_global_extensions=[
            \'coc-css',
            \'coc-json',
            \'coc-tsserver',
            \'coc-java',
            \'coc-solargraph',
            \'coc-snippets',
            \'coc-eslint',
            \'coc-pyright',
            \'coc-highlight',
            \]
