set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" EasyMotion быстрое перемещение с помощью клавиатуры
Plugin  'https://github.com/easymotion/vim-easymotion'

" Goyo убирает все лишнее для свободного письма
Plugin 'https://github.com/junegunn/goyo.vim'

" Vim-Pencil удобный перенос строк для написания текста
Plugin 'https://github.com/reedes/vim-pencil'

" SingleCompile сборка и исполнение отдельных файлов
Plugin 'https://github.com/xuhdev/singlecompile'

" Airline строка статуса
Plugin 'https://github.com/bling/vim-airline'

" Auto Pairs удобная работа со скобками
Plugin 'https://github.com/jiangmiao/auto-pairs'

" Syntastic проверка синтаксиса налету
Plugin 'https://github.com/scrooloose/syntastic'

" ruscmd поддержка команд русскими буквами
Plugin 'https://github.com/powerman/vim-plugin-ruscmd'

" Vim-Signature отображение меток в текущем файле
Plugin 'https://github.com/kshenoy/vim-signature'

" Surround оборачивание кода в парные элементы
Plugin 'https://github.com/tpope/vim-surround'

" Gruvbox цветовая тема
Plugin 'https://github.com/morhetz/gruvbox'

" NERD Tree дерево проекта
Plugin 'https://github.com/scrooloose/nerdtree'

" NERD Commenter удобное комментирование строк
Plugin 'https://github.com/scrooloose/nerdcommenter'

" Vim MarkdownMarkdown для Vim
Plugin 'https://github.com/plasticboy/vim-markdown'

" Tagbar удобный просмотр структуры файла
" ВНИМАНИЕ: требует установки ctags
Plugin 'https://github.com/majutsushi/tagbar'

Plugin 'Valloric/YouCompleteMe'
call vundle#end()



" ======================= Основные настройки (начало) ==================== 
filetype plugin indent on

syntax on
" установка цветовой темы
colorscheme gruvbox
set background=dark

" отключение swp файлов
set noswapfile
" настройка кол-ва пробелов взамен '\t'
set ts=4 " tabstop
set sw=4 " shiftwidth
set sta " smarttab
set et " expandtab - автозамена '\t' на пробелы по-умолчанию
" нумерация строк
set nu
" автоотступы для новых строк
set ai
" настройка поиска
set sm
set hls
set is
set ic
" разворачивает вложенности
set fdl=99
" автоматическая смена каталога к месту расположения текущего файла
set autochdir

" отключить подсветку после нахождения совпадения
nnoremap <CR> :nohlsearch<CR><CR>
" проверка словаря и отключение проверки
nmap <F6> :set spell spelllang=en,ru<CR>
nmap <F5> :set nospell<CR>
" ======================= Основные настройки (конец) ==================== 

" ======================= Настройка плагинов (начало) ==================== 
" скрыть показать Nerd Tree
nnoremap <F4> :NERDTreeToggle<CR>  
" скрыть/показать Tagbar
nmap <F8> :TagbarToggle<CR>
" Включить/Выключить простой режим
nnoremap <F3> :PencilSoft<CR>:Goyo<CR>
" SingleCompile по нажатию F9
nmap <F9> :SCCompileRun<cr>
" настройка airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
" ======================= Настройка плагинов (конец) ==================== 

if filereadable(glob("~/dotfiles/vimrc.local.mac")) 
    source ~/dotfiles/vimrc.local.mac
endif
