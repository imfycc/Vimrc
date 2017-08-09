
" 文件编码
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936t
set fileencoding=utf-8
set langmenu=zh_CN.UTF-8 helplang=cn

set number                                         " 显示行号
set t_Co=256                                       " 使用256色
set laststatus=2                                   " 总是显示状态行
set cmdheight=1                                    " 命令行（在状态行下）的高度，默认为1，这里是2
set cursorline                                     " 突出显示当前行
set scrolloff=3                                    " 光标移动到buffer的顶部和底部时保持3行距离
set ruler                                          " 显示标尺
set foldenable                                     " 允许折叠
set guifont=Monaco:h13                             " 字体设置
set confirm                                        " 在处理未保存或只读文件的时候，弹出确认
"set wrap                                          " 换行
set linebreak                                      " 合适的地方折行 ^I!@*-+_;:,./?
set noeb                                           " 不要错误提示音

"缩进
set autoindent                                     " 语法自动缩进
set cindent                                        " 类似C语言程序的缩进
set tabstop=2                                      " 一个TAB字符占多少个空格的位置
set softtabstop=2                                  " 每次退格将删除X个空格
set shiftwidth=2                                   " 使用每层缩进的空格数。
set backspace=2                                    " 使回格键（backspace）正常处理indent, eol, start等
set expandtab                                      " 用空格代替Tab
set smarttab                                       " 在行首按TAB将加入 shiftwidth 个空格

set nobackup                                       " 不备份
set noswapfile                                     " 禁止生成临时文
set nocompatible                                   " 不要使用vi的键盘模式，而是vim自己的
set ignorecase                                     " 搜索忽略大小写
set smartcase                                      " 智能大小写搜索
set hlsearch                                       " 搜索逐字符高亮
set incsearch                                      " 输入搜索内容时就显示搜索结果
set history=1000                                   " 记录1000条历史
set gdefault                                       " 行内替换
set viminfo+=!                                     " 保存全局变量
set mouse=a                                        " 使用鼠标
set selection=exclusive                            " 光标所在位置不属于被选中的范围
set selectmode=mouse,key                           " 鼠标键盘都可以选择文本
set report=0                                       " 通过使用: commands命令，告诉我们文件的哪一行被改变过
set shortmess=atl                                  " 启动的时候不显示那个援助索马里儿童的提示
set showmatch                                      " 高亮显示对应的括号
set matchtime=5                                    " 匹配括号高亮的时间（单位是十分之一秒）
set fillchars=vert:\ ,stl:\ ,stlnc:\               " 在被分割的窗口间显示空白，便于阅读
set completeopt=longest,menu                       " 打开文件类型检测, 加了这句才可以用智能补全
set autochdir                                      " 自动切换当前目录为当前文件的目录
set guioptions-=m                                  " 隐藏菜单栏
set guioptions-=T                                  " 隐藏工具栏
set guioptions-=L                                  " 隐藏左侧滚动条
set guioptions-=r                                  " 隐藏右侧滚动条
set guioptions-=b                                  " 隐藏底部滚动条
set list                                           " 显示空格
set listchars=tab:>-,trail:~,extends:>,precedes:<  " 显示空白字符 方便团队协作时使用规范的代码间隔

filetype on                                        " 侦测文件类型
filetype indent on                                 " 为特定文件类型载入相关缩进文件
filetype plugin indent on                          " 开启插件
syntax on                                          " 语法高亮


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle 插件管理
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme) 
  echo "正在安装插件管理器 Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif

set nocompatible              " be iMproved, required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Yggdroot/indentLine'
Plugin 'gko/vim-coloresque'
Plugin 'dyng/ctrlsf.vim'
Plugin 'godlygeek/tabular'
Plugin 'altercation/vim-colors-solarized'
Plugin 'molokai'
"Plugin 'airblade/vim-gitgutter'
Plugin 'posva/vim-vue'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-rails'
Plugin 'elixir-lang/vim-elixir'
Plugin 'plasticboy/vim-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'vim-scripts/WebAPI.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-syntastic/syntastic'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'slim-template/vim-slim'
"Plugin 'groenewege/vim-less'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'hsanson/vim-android'
"Plugin 'jeroenbourgois/vim-actionscript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'tpope/vim-dispatch'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'sjl/gundo.vim'
Plugin 'Keithbsmiley/rspec.vim'

if iCanHazVundle == 0
   echo "正在安装插件..."
   echo ""
   :PluginInstall
endif

call vundle#end()            " required
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 插件设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Plugin: emmet
"let g:user_emmet_leader_key='<C-D>'
let g:user_emmet_expandabbr_key = '<tab>'
"let g:user_emmet_mode='a'    "enable all function in all mode.


" Plugin: NERD-tree
autocmd StdinReadPre * let s:std_in=1                       " 随 vim 自启动
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")&&b:NERDTreeType == "primary") | q | endif
let NERDTreeShowHidden=1                                    " 是否显示隐藏文件
let NERDTreeWinPos="right"
noremap <F2> :NERDTreeToggle \| :silent NERDTreeMirror<CR>  " F2 快捷键展示／隐藏 项目目录
let NERDTreeIgnore=['.DS_Store']                            " 不显示的文件名单

" Plugin: vim-jsx 插件配置 在.js文件内支持jsx语法
let g:jsx_ext_required=0


" Plugin: syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1 "打开文件的时候就开启语法检查
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']


" Plugin: Indent Guides
let g:indent_guides_enable_on_vim_startup=1          " 随 vim 自启动
let g:indent_guides_start_level=2                    " 从第二层开始可视化显示缩进
let g:indent_guides_guide_size=1                     " 色块宽度
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


" Plugin: Rails
let g:rails_statusline=0


" Plugin: multi_cursor
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'

" Plugin: Tabularize
" hit <leader> twice to auto align codes
noremap <leader><leader> :Tabularize /=<CR>
noremap <leader>;        :Tabularize /:/l0<CR>


" Plugin: CtrlSF
nnoremap <silent> <leader>f :CtrlSF<CR>

" Plugin: gundo
nnoremap <F5> :GundoToggle<CR>

let g:vim_markdown_folding_disabled = 1
let g:tick_fmt_autosave = 0


"主题设置
if has('gui_running')
  syntax enable
  let g:solarized_termcolors=256
  set background=light
  colorscheme solarized
else
  let g:molokai_original = 1
  let g:rehash256 = 1
  colorscheme molokai
endif

" 输入法自动切换
set noimd
set imactivatekey=S
if has("gui_running")
  set imi=2
  set ims=2
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

:imap jf <Esc>
inoremap <leader>d <ESC>dd

" 查看单行文字"
map j gj
map k gk

"<Ctrl-s> for saving
map <silent><C-s> :update<CR>
inoremap <C-s> <ESC>:update<CR>a

au FileType ruby nnoremap <buffer> <leader>r :!ruby "%"<CR>
au FileType javascript nnoremap <buffer> <leader>r :!node "%"<CR>
au FileType vim nnoremap <buffer> <leader>r :so %<CR>
au FileType sh  nnoremap <buffer> <leader>r :!sh "%"<CR>
au FileType actionscript set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
au BufRead,BufNewFile *.wpy setlocal filetype=vue.html.javascript.css
"自动补全css html
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd! BufRead,BufNewFile *.less set filetype=less
"ejs 高亮
au BufNewFile,BufRead *.ejs set filetype=html
"crontab
autocmd filetype crontab setlocal nobackup nowritebackup

" key-mappings for <Alt-[hjkl]> moving cursor in insert mode
inoremap <M-l> <RIGHT>
inoremap <M-k> <UP>
inoremap <M-j> <DOWN>
inoremap <M-h> <LEFT>

inoremap <C-l> <ESC>A
inoremap <C-h> <ESC>I
inoremap <silent><C-o> <ESC>O

nnoremap <C-d> yyp
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" <Alt + [1-5]> goto tab in position i
nnoremap <M-1> 1gt
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt

nnoremap <C-z> :shell<CR>

vnoremap " <ESC>i"<ESC>gvo<ESC>i"<ESC>
vnoremap ' <ESC>i'<ESC>gvo<ESC>i'<ESC>

