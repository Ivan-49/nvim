
" Отключание совместимостей с vi. Нужно для правильной работы некоторых опций
set nocompatible

" Игноррирование регистра в поиске 
set ignorecase

" Не игнорировать если в патерне есть большие буквы
set smartcase

" подвечивать найденный паттерн
set hlsearch

"Интерактивный поиск
set incsearch

" Размер табов - 4
set tabstop=4
set softtabstop=4
set shiftwidth=4

" превратить табы в пробелы
set expandtab

" Таб перед строкой будет вставлять количество пробелов определенное в shiftwidth
set smarttab

" Копировать отступ на новой строке 
set autoindent
set smartindent

" Показывать номера строк
set number

" Относительные номера строк
 set relativenumber

" Автокомплиты в командной строке 
set wildmode=longest, list

" Подсветка синтаксиса
syntax on 

" Разрешить использование мыши 
set clipboard=unnamedplus

" Быстрый скроллинг
set ttyfast

" курсор во время скроллинга всегда будет в середине экрана 
set so=30

"Встроенный плагин для распознавания отступов 
filetype plugin indent on



call plug#begin()
Plug 'projekt0n/github-nvim-theme'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
"Plug 'https://github.com/Exafunction/codeium.vim'
"Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
call plug#end()
colorscheme github_dark

inoremap jk <esc>


nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

set colorcolumn=85






