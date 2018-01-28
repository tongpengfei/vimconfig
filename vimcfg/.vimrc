" /etc/vimrc (configuration file for vim only)
" author: Klaus Franken     <kfr@suse.de>
" author: Werner Fink       <werner@suse.de> 
" author: Florian La Roche  <florian@suse.de> 
" version: 00/01/20
" commented lines start with `"'

" enable syntax highlighting
syntax on

" automatically indent lines (default)
" set noautoindent

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8

" show cursor line and column in the status line
set ruler

" show matching brackets
set showmatch

" display mode INSERT/REPLACE/...
set showmode

" changes special characters in search patterns (default)
" set magic

" Required to be able to use keypad keys and map missed escape sequences
set esckeys

" get easier to use and more user friendly vim defaults
" CAUTION: This option breaks some vi compatibility. 
"          Switch it off if you prefer real vi compatibility
set nocompatible

" allow backspacing over everything in insert mode 
set backspace=indent,eol,start

" Complete longest common string, then each full match
" enable this for bash compatible behaviour
" set wildmode=longest,full

"tpf的配置
"colorscheme tpf 
"colorscheme def
set number
set ts=4
set sw=4
set autoindent "自动缩进
set ignorecase
"智能缩进
set smartindent
set hlsearch
set incsearch

set cindent "C缩进

set binary
set noendofline

"taglist
"nnoremap <silent> <F8> : TlistToggle<CR>
"map<F8>:TlistToggle<CR>

"默认打开taglist
"let Tlist_Auto_Open=1

"不同时显示多个文件的tag,只显示当前文件的
"let Tlist_Show_One_File=1

"如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Exit_OnlyWindow=1

"在右侧窗口显示taglist窗口
let Tlist_Use_Right_Window=1

"显示多个文件中的tag时，折叠其他文件的tag
"let Tlist_File_Fold_Auto_Close=1

"看去把焦点切到taglist上
"let Tlist_GainFocus_On_ToggleOpen=1

"taglist width, height
"let Tlist_WinHeight=10
"let Tlist_WinWidth=20

"全能补全O
"inoremap <F7> <C-x><C-o>

"一般设置
"set nocompatible "VIM而不是VI
set history=50 "历史记录50条
filetype on "打开文件类型检测

"颜色设置
syntax on "语法高亮
"set hls "查找文本高亮

"显示匹配
set showmatch

"1/10秒延迟
"set matchtime=5

"高亮搜索
"set hlsearch

"搜索中匹配
"set incsearch

"ctags
"set tags=tags; 

"ctags
set autochdir

"""""""""""""""""""""""""""""""
"" winManager setting
"""""""""""""""""""""""""""""""
"设置界面分割
"let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"
"let g:winManagerWindowLayout = "TagList,FileExplorer,BufExplorer"
"let g:winManagerWindowLayout = "NeRDTree|TagList,BufExplorer"
"let g:AutoOpenWinManager = 1 
"let Tlist_Exit_OnlyWindow=1
"设置winmanager的宽度，默认为25
"let g:winManagerWidth = 30
 
"定义打开关闭winmanager按键
"nmap <silent> <F8> :WMToggle<cr>


