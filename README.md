# Vimrc

:warning: 只在 macOS 上测试过

## 特色
* 自动安装 [Vim-plug](https://github.com/junegunn/vim-plug) 以及各种插件
* 自用，同步更新
* 前端 react / vue / javascript / Emmet / less / sass 等语法支持

## 安装

下载使用即可。

如果启用 [ack.vim](https://github.com/mileszs/ack.vim) 插件（项目内内容搜索），`Mac OS` 需要预装 [`ag`](https://github.com/ggreer/the_silver_searcher)

```
brew install the_silver_searcher
```

## Markdown 实时预览

使用 Vim 打开或者新建 `*.md` 文件时，会自动打开浏览器实时展示内容。

### 如果已经安装了 [Node.js](https://nodejs.org/en/)

```
npm -g install instant-markdown

or

yarn global add instant-markdown
```

## 截图

one 主题 light

![one theme](https://user-gold-cdn.xitu.io/2020/3/19/170f22667d7706d3?w=3346&h=1896&f=png&s=493881)

one 主题 dark

![one theme](https://user-gold-cdn.xitu.io/2020/3/19/170f2264b1242744?w=3346&h=1896&f=png&s=470269)

## 支持的编程语言或平台
* javascript、typescript
* less、css、scss
* html
* wepy 框架 .wpy
* Vue
* React/jsx
* markdown
* elixir
* dart

## 快捷键

`<leader>` 键为 `,`

`jk` 与 `esc` 功能一致

`<leader>bg` 黑暗模式/高亮模式 切换

`:W` 管理员模式保存

`<leader>w` 快速保存

`Ctrl` +  `s` 保存

`<leader>fc` 找出有冲突的问题

`<leader>bq` 退出当前 buffer

## 插件

### nerdtree

### [tpope/vim-surround](https://github.com/tpope/vim-surround)
> 使用指定的字符包裹选中项

`cs"'` "Hello world!" => 'Hello world!'

`cs'<q>` <q>Hello world!</q>

cst" "Hello world!"

ds" Hello world!

ysiw] (iw is a text object). [Hello] world!

cs]{ { Hello } world!

yss).({ Hello } world!)

ds{ds) Hello world!

ysiw<em> <em>Hello</em> world!

V S<p class="important">.

<p class="important">
  <em>Hello</em> world!
</p>

### [scrooloose/nerdcommenter](https://github.com/preservim/nerdcommenter)
> 注释插件

#### 快捷键

`<leader>cc` 注释当前行

`<leader>cn` 嵌套注释

`<leader>c<space>` 注释和被注释状态切换

`<leader>cm` 多行注释

`<leader>ci` 单行注释状态的切换

`<leader>cs` 带有格式的块注释

`<leader>c$` 注释光标到行位

`<leader>cA` 行位添加注释

`<leader>cu` 解开注释

### godlygeek/tabular
> 代码格式化对齐

### [yardnsm/vim-import-cost](https://github.com/yardnsm/vim-import-cost)
> 显示 import 包大小

`:ImportCost` 显示所有的
`:ImportCostSingle` 当前行
`:ImportCostClear` 清除显示

### mattn/emmet-vim
> 前端 快捷补全

#### 文档
https://docs.emmet.io/

#### 快捷键
`control` + `d` + `<leader>`

### mhinz/vim-mix-format
> elixir 格式化代码

#### 快捷键
`:MixFormat` 格式化当前文件

`:MixFormatDiff` 将打开一个差异窗口，该窗口可用于预览更改或仅选择看起来合理的更改。

`dp` 将更改从差异窗口推送到源文件。

`q` 关闭差异窗口。

`]c` 和`[c` 在更改之间跳转。

###[tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
> git 集成

```
:G
:Git
:!git
:Git add
:Git commit
:Git diff
:Git log
:Git blame :Gblame
:Gstatus
```

以下插件基本没有快捷键，属于自动处理或展示类插件

|插件|功能|
|----|----|
|lightline.vim|状态栏插件|
|lightline-bufferline|lightline 插件 展示 buffer 栏|
|Yggdroot/indentLine|展示代码缩进对齐线|
|airblade/vim-gitgutter|git 显示文件的修改情况|
|vim-colors-solarized| 主题 solarized|
|vim-one|主题 one|
|kaicataldo/material.vim|主题 material|
|arcticicestudio/nord-vim|主题 nord|
|vim-vue|前端库 Vue|
|vim-jsx|前端库 React|
|vim-javascript|前端 js|
|typescript-vim|typescript|
|yats.vim| typescript highlight|
|groenewege/vim-less|前端 less|
|gko/vim-coloresque|CSS颜色显示|
|webapi-vim| web api|
|docunext/closetag.vim| 前端 HTML tag auto close|
|Raimondi/delimitMate|引号、括号自动匹配|
|vim-elixir|语言 elixir|
|dart-vim-plugin|语言 Dart|
|vim-gfm-syntax|markdown|
|vim-instant-markdown|markdown 预览|


## 等待整理

```
Plug 'dyng/ctrlsf.vim'                                                   " 文件内搜索
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }                        " 搜索文件 类似于 ctrlp
Plug 'terryma/vim-multiple-cursors'                                      " 多光标
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }                   " 代码格式化
Plug 'w0rp/ale'                                                          " for eslint
Plug 'vim-syntastic/syntastic'
```

```
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

set wildignore+=*node_modules/**

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>
map <leader>bc :BufOnly<cr>


map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
map <leader>bf :bfirst<cr>
map <leader>bl :blast<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tq :tabclose<cr>
map <leader>tm :tabmove
map <leader>tl :tabnext<cr>
map <leader>th :tabprevious<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
nmap <D-j> <M-j>
nmap <D-k> <M-k>
vmap <D-j> <M-j>
vmap <D-k> <M-k>
endif

" buffer
nmap <leader>N :enew<cr>
nmap <leader><Tab> :b #<CR>
" nmap <leader>h :bp<CR>
" nmap <leader>l :bn<CR>
```
