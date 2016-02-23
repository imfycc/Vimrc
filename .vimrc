
"Vic的Vim配置文件
set nu                                             " 显示行号  
syntax on                                          " 语法高亮  
set ruler                                          " 显示标尺  
set foldenable                                     " 允许折叠  
set mouse=a                                        " 使用鼠标

"文件编码
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936t
set fileencoding=utf-8


"允许插件
filetype plugin on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle 插件管理
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
 " To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 ":PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
 "auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line


"我的插件配置
 Plugin 'https://github.com/Lokaltog/vim-powerline.git'
 Plugin 'The-NERD-tree'
 "Plugin 'Shougo/neocomplete.vim'
 "Plugin 'terryma/vim-multiple-cursors'
 "Plugin 'ervandew/supertab'
 Plugin 'molokai'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'marijnh/tern_for_vim'
 Plugin 'jelera/vim-javascript-syntax'
 Plugin 'ahayman/vim-nodejs-complete'
 Plugin 'mattn/emmet-vim'

"emmet 插件配置 
let g:user_emmet_leader_key='<C-Y>'
let g:user_emmet_expandabbr_key = '<Tab>'
let g:user_emmet_mode='a'    "enable all function in all mode.

"YouComplete 插件需要编译进.vim/bundle/Youcomplete/ python2.7 ./install.py




set autoread                " 设置当文件被改动时自动载入
set nobackup                " 从不备份  
set cursorline              " 突出显示当前行
set confirm                 " 在处理未保存或只读文件的时候，弹出确认
set autoindent              " 自动缩进
set cindent     
set tabstop=4               " Tab键的宽度        
set softtabstop=4           " 统一缩进为4
set shiftwidth=4
set nocompatible            " 不要使用vi的键盘模式，而是vim自己的
set noexpandtab             " 不要用空格代替制表符
set nobackup                " 禁止生成临时文件
set noswapfile
set ignorecase              " 搜索忽略大小写
set hlsearch                " 搜索逐字符高亮
set incsearch
set gdefault                " 行内替换
set laststatus=2            " 总是显示状态行
set cmdheight=1             " 命令行（在状态行下）的高度，默认为1，这里是2
set viminfo+=!              " 保存全局变量
set backspace=2             " 使回格键（backspace）正常处理indent, eol, start等
set mouse=a                 " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set selection=exclusive
set selectmode=mouse,key
set report=0                " 通过使用: commands命令，告诉我们文件的哪一行被改变过
set matchtime=1             " 匹配括号高亮的时间（单位是十分之一秒）
set scrolloff=3             " 光标移动到buffer的顶部和底部时保持3行距离

set fillchars=vert:\ ,stl:\ ,stlnc:\  " 在被分割的窗口间显示空白，便于阅读
set completeopt=longest,menu   " 打开文件类型检测, 加了这句才可以用智能补全

filetype on                 " 侦测文件类型
filetype indent on          " 为特定文件类型载入相关缩进文件


"主题配置
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

"自动补全css html
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
