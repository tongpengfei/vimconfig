#简明的vim常用指令介绍和我用了多年的vim配置文件

	最近有同事想用vim,借着这样的机会,我就向没有用过vim,想用vim的同学简明介
绍一下,为了让各位有比较直观的感受,我特意吐血配了一些激情小动图,希望大家喜欢:
	所以此文的面向对象是没用过vim,想了解vim的同学.

    一开始用vim的时候下载了很多插件,因为当时已经习惯vs了,用vim时候想尽量贴
近vs习惯,后来随着时间退移, 发现用到的功能越来越少,比如开始用到的Tlist,cope
在后来的代码编辑中不知道为啥渐渐不怎么用了,不过浏览开源工程时候还是挺好用的,
打开Tlist可以看到文件的函数定义. 
	到最后整理出vimconfig的时候就只有一点点功能了，对我来说最实用的还是代
码颜色这块,当时主要是为了配出喜欢的c,cpp代码的颜色,有兴趣的可以看
vimcfg/.vim/syntax/tpf.vim 和vimcfg/.vim/color/c.vim文件一个是语法匹配,一
个是颜色定义,这个是2010年的时候配的,长期不看,其实我也不怎么记得了.
	
	最终的配色就是这样:
![vim_color](res/vim_color.png)

## 安装vim
* ubuntu可以用下面这行命令安装
```c
bash$ sudo apt-get install vim 
```
* centos可以用下面这行命令安装
```c
bash$ sudo yum install vim 
```

## 安装vim confg
    安装配置文件只需要把vimcfg下的.vim .vimrc复制到~/目录下就可以了. 
    可以使用命令复制到目录~/下
```c
bash$ cp -rf vimcfg/.* ~/
```

## 使用vim
* 打开空的vim编辑器,在bash下输入 vim 即可
```c
bash$ vim 
```
![open_empty](res/open_empty.gif)

* 退出vim
```c
在vim里输入 :q 然后回车
```

* 用vim编辑main.cpp,注意下面图中退出时候我用的是:q! 加!号表示强制退出,这个
是习惯问题,就好比我在vs中写代码,当写完一段的时候下意识的按ctrl+shift+s,有
时候会按住ctrl+shift+狂点s,我想这个时候我应该是已经进入高潮了,在vim里打完
一段时候下意识的点ctrl+w,esc是一样的,ctrl+w就是保存的意思,esc表示退出编辑
状态,而且按esc时候也有狂点esc的毛病,这个会在后面介绍编辑模式时候到.
```c
bash$ vim main.cpp
```
![open](res/open_close.gif)

* 还可以用vim打开一个目录,比如下面我打开当前目录,便会列出该目录下的所有文件. 使用j,k可以上下移动光标,选中想进入的文件后,按回车便可进入该文件,一般在工程
不熟的时候可以用这个命令在多个文件中切换,如果是自己写的项目,大多数文件名都
在心里记着, 直接vim 文件名前几个字符+tab补全就可以快速编辑该文件.
```c
bash$ vim .
```
![open_dir](res/open_dir.gif)

* 移动光标,是vim里最常用的指令,使用vim的过程,在我看来基本上就是在移动光标,
可以用hjkl也可以用方向键,但是强烈建议一开始就用hjkl来控制方向,这样可以极大
的提高代码编辑速度,因为手可以不用在字母与方向键之间来回切换.
  一打开文件的时候,是正常模式,这个时候可以用hjkl在代码间来回移动,下面是我常用的移动光标指令

  一共有12种:

  * h 对应 左, 相当于 方向键的左
![h](res/h.gif)

  * l 对应 右, 相当于 方向键的右
![l](res/l.gif)

  * j 对应 下, 相当于 方向键的下
  * k 对应 上, 相当于 方向键的上
![jk](res/jk.gif)

  * 0 跳到一行的开头
  * $ 跳到一行的结尾
![line_start_end](res/line_start_end.gif)

  * e 跳到一个单词的结尾
![e](res/e.gif)

  * b 跳到一个单词的开头
![b](res/b.gif)

  * gg 跳到文件开头
  * G 跳到文件结尾
![gg_G](res/gg_G.gif)

  * ctrl + f 向下翻一页
  * ctrl + b 向上翻一页
![ctrl_f_b](res/ctrl_f_b.gif)
