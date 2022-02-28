---
published: true
layout: bookpage_zh-CN
weight: 15
category: Getting To Know FontForge
title: 安装FontForge
---

[FontForge]是一个自由开源软件，这显然意味着你可以不受限地下载和安装。这也意味着这是一个由社区维护的应用（任何人可以贡献源代码）。

FontForge支持Windows，Mac OS和GNU/Linux (“Linux”)操作系统。本节的关注在Linux机器上安装FontForge。由于许多FontForge的开发者使用Linux作为日常开发环境，所以在这个平台上用源代码构建时最简单的方式。

<p class="note"><b>注意：</b>如果你使用FontForge时遇到了问题，或者FontForge缺少一个功能，你可以在<a href="https://github.com/fontforge/fontforge">软件的库</a>打开一个问题。即使你只是刚刚入门，开发者也会去看这个问题。</p>


## 安装预编译包

在[FontForge网站][FontForge]的主菜单上点击下载按钮将会带你到FontForge下载页。页面内列出了三个操作系统下的安装链接。链接页面内都提供了二进制包下载。（译者注：安装预编译包一节按照FontForge网站最新结构编写，原文与网站已经脱节）

### 在Windows下安装

[FontForge的Windows版本][FontForge Windows Edition]页面提供了二进制安装包下载，以管理员身份安装，并以管理员身份运行软件即可。

另外，Jeremy Tan提供了Windows下FontForge的[最近构建版本](http://sourceforge.net/projects/fontforgebuilds/)。从2012年之前的稳定版安装包可以在[旧的SourceForge库](http://sourceforge.net/projects/fontforge/files/fontforge-executables/)中找到。

### 在Mac OS X下安装

正在建设中的新网站上提供了[安装指南](http://fontforge.github.io/en-US/downloads/mac/)。

### 在GNU/Linux下安装

在你的Linux机器上安装FontForge最简单的的方式是使用你的分发版的包库。

正在建设中的新网站上提供了[安装指南](http://fontforge.github.io/en-US/downloads/gnulinux/)。

#### Fedora

以root用户身份运行下面的yum命令可以在你的Fedora Linux桌面机上安装FontForge。完成安装的下载量大概是10MiB。

```
yum install fontforge
```

如果在你的Fedora机器上没有编译软件，那么安装gcc，automake，autoconf和其他软件后你可能在执行libtoolize的autogen.sh的时候遇到错误。如果遇到这种情况你需要安装Fedora的libtool-ltdl-devel包，或者其他Linux分发版的类似开发包。

上述yum install完成后你可以在你的菜单运行FontForge，或者从konsole或gnome-terminal直接使用*fontforge*命令运行。

## 在Github上编译你自己的版本

某些情况下，可能你需要使用一个预编译版本中尚不存在的功能，你可能希望从Github拿到代码编译自己的版本。Github是一个源代码托管服务，每个人都可以为软件一部分的开发做出贡献。本节的说明只针对Ubuntu 14.04。

#### 安装准备软件

安装一些包以准备软件的编译

```
sudo apt-get install build-essential automake flex bison
```

安装*unifont*包使引用字形完整显示。[Unifont] (http://savannah.gnu.org/projects/unifont)包含所有Unicode编码的字形，如果安装了FontForge将使用它。

```
sudo apt-get install unifont
```

安装其他的必需包： 

```
sudo apt-get install packaging-dev pkg-config python-dev libpango1.0-dev
libglib2.0-dev libxml2-dev giflib-dbg libjpeg-dev libtiff-dev uthash-dev
```

#### 构建*libspiro*

FontForge使用[libspiro] (http://github.com/fontforge/libspiro)来简化曲线绘制。

下载代码：

```
git clone https://github.com/fontforge/libspiro.git
```

按顺序执行下面的命令（也就是说等一个执行完再执行下一个）：

```
cd libspiro
autoreconf -i
automake --foreign -Wall
./configure
make
sudo make install
cd ..
```

#### 构建*libuninameslist*

FontForge使用[libuninameslist] (http://github.com/fontforge/libuninameslist)来访问每个Unicode编码点的属性数据。

下载代码：

```
git clone https://github.com/fontforge/libuninameslist.git
```


按顺序执行下面的命令（也就是说等一个执行完再执行下一个）：

```
cd libuninameslist
autoreconf -i
automake --foreign
./configure
make
sudo make install
cd ..
```

#### 构建FontForge

下载代码：

```
git clone https://github.com/fontforge/fontforge.git
```

按顺序执行下面的命令：

```
cd fontforge
./bootstrap
./configure
make
sudo make install
cd ..
```

让系统知道新的库：
    
```
sudo ldconfig
```

如果你需要单步调试TrueType字体提示或者其他高级功能，还需要使用`--with-freetype-source`配置选项。


## 调试FontForge软件

如果在某个阶段你发现FontForge的可复现的稳定性问题，你可能需要安装调试信息，才能给FontForge团队提供回溯信息以纠正问题。

如果你从Linux分发版的包库安装了FontForge，安装调试信息的方法与从源代码构建时安装调试信息不同。在两种情况下，你都可以使用*nm*命令来检查你安装的FontForge中调试信息是否已经可以使用。使用“type”命令来找到你的`Fontforge二进制文件`。如果你看到下面显示的“no symbols”信息，你需要升级你的安装包来包含调试信息，能够给FontForge开发者提供良好的反馈。

```
$ type -all fontforge
fontforge is /usr/bin/fontforge
$ nm /usr/bin/fontforge
nm: /usr/bin/fontforge: no symbols
```

当你想要为来自Fedora库的FontForge添加调试信息的时候，使用下面的命令。需要注意的是如果你还没装好许多依赖的调试信息包，那么可能需要下载几百兆字节的数据。

```
debuginfo-install fontforge
```

更多信息参见[调试][Debugging]一节。


[FontForge]: http://fontforge.github.io/
[Debugging]: When_Things_Go_Wrong_With_Fontforge_Itself.html
[FontForge Windows Edition]: http://fontforge.github.io/en-US/downloads/windows/
