
"检测是否安装了vundle
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
	echo "Installing Vundle.."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	let iCanHazVundle=0
endif

"有时间再弄，自动安转完Vundle后，再自动安装相关插件


"Vic的Vim配置文件
set nu                                             " 显示行号  
syntax on                                          " 语法高亮  
set ruler                                          " 显示标尺  
set foldenable                                     " 允许折叠  
set mouse=a                                        " 使用鼠标
set guifont=Monaco:h13                             " 字体设置


"文件编码
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936t
set fileencoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle 插件管理
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"我的插件配置
 Plugin 'VundleVim/Vundle.vim'
 Plugin 'Lokaltog/vim-powerline'
 Plugin 'Yggdroot/indentLine'
 Plugin 'mattn/emmet-vim'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'molokai'
 Plugin 'The-NERD-tree'
 Plugin 'jistr/vim-nerdtree-tabs'
 Plugin 'Xuyuanp/nerdtree-git-plugin'
 "Plugin 'terryma/vim-multiple-cursors'
 "Plugin 'ervandew/supertab'
 "Plugin 'ternjs/tern_for_vim'
 Plugin 'mxw/vim-jsx'
 Plugin 'jelera/vim-javascript-syntax'
" Plugin 'ahayman/vim-nodejs-complete'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"emmet 插件配置 
"let g:user_emmet_leader_key='<C-D>'
let g:user_emmet_expandabbr_key = '<tab>'
"let g:user_emmet_mode='a'    "enable all function in all mode.

"The-NERD-tree auto open start vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")&&b:NERDTreeType == "primary") | q | endif
" 是否显示隐藏文件
let NERDTreeShowHidden=1

let NERDTreeWinPos="right"

"vim-jsx 插件配置 在.js文件内支持jsx语法
let g:jsx_ext_required = 0

"ejs 高亮
au BufNewFile,BufRead *.ejs set filetype=html


"Indent Guides 插件设置
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 设置当文件被改动时自动载入
set nobackup                " 从不备份  
set cursorline              " 突出显示当前行
set confirm                 " 在处理未保存或只读文件的时候，弹出确认
set autoindent              " 自动缩进
set cindent     
set tabstop=2               " Tab键的宽度
set softtabstop=2           " 统一缩进为2
set shiftwidth=2
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

syntax enable

if has('gui_running')
	let g:solarized_termcolors=256
  set background=light
  colorscheme solarized
else
	"主题配置
  let g:molokai_original = 1
  let g:rehash256 = 1
  colorscheme molokai
endif


"自动补全css html
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


"crontab
autocmd filetype crontab setlocal nobackup nowritebackup
:imap jf <Esc>

if has("gui_running")
     set guioptions-=L          " 隐藏左侧滚动条
     set guioptions-=r          " 隐藏右侧滚动条
    "set guioptions+=b          " 显示底部滚动条
    "set nowrap                 " 设置不自动换行
endif

