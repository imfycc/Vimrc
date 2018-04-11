# Vimrc

注意：只在 Mac OS 上测试过

## 特色

* 无需配置，下载即用
* 自动安装 [Vim-plug](https://github.com/junegunn/vim-plug) 以及各种插件
* 自用，同步更新
* MacVim / Vim 通用
* 前端 react / vue / javascript / Emmet / less / sass 等语法支持
* css / less / scss 色彩显示
* [solarized](https://github.cooooooooooooom/altercation/vim-colors-solarized) 主题
* [one](https://github.com/rakr/vim-one) 主题
* 各设置均带注释方便学习

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

solarized 主题 light

![Vim 效果图](https://ws2.sinaimg.cn/large/006tNc79ly1ficcyg7glkj31kw0v9qf1.jpg)

solarized 主题 dark

![solarized theme](https://ws3.sinaimg.cn/large/006tKfTcly1fpx30pbv7bj31kw0upwp5.jpg)

one 主题 light

![one theme](https://ws1.sinaimg.cn/large/006tKfTcly1fpx2mwhrp8j31kw0vndqn.jpg)

one 主题 dark

![one](https://ws3.sinaimg.cn/large/006tKfTcly1fpx2u53bocj31kw0up7eu.jpg)


## TODO

- [ ] 语法检查 vim-syntastic/syntastic elixir python js less sass
- [ ] 代码补全 YouCompleteMe 和 vim 的快捷键

