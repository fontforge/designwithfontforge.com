---
published: true
layout: bookpage_zh-CN
weight: 27
category: workflow
title: 字体信息和元数据
---

## 字体信息与元数据

### 元素，字体信息

任何一款字体编辑器中都有一个编辑字体信息的窗口，FontForge 也不例外。第一次打开这个对话框，你可能有点不知所措。FontForge 严格遵循 OpenType 标准，所以你可以通过它熟悉 OpenType 标准；同样，去了解 OpenType 标准也可以让你熟悉这个对话框中的内容。

<img src="../en-US/images/info_ps_names.png"/>

### 版本编号

软件开发者喜欢给他们的每一版程序都起一个代号，字体也可以这样。

从某种程度上来讲，字体是文字操纵用户情感的 API。

主版本号的更新对应较大的重构和调整。

拿 [Exo](http://www.google.com/fonts/specimen/Exo) （此 Exo 非彼 EXO）和 [Exo 2](http://www.google.com/fonts/specimen/Exo+2) 举个例子，如果你写东西的时候用到了 Exo，你就不会换用 Exo 2 了，因为人的感官会很敏锐地察觉到它们之间微小的差别。

此外，添加了高度相似的多种文字，添加了新语种的支持，或垂直／水平规格（vertical or horizontal metrics）的改变，也可能导致主版本号更新。

然而，如果设计了两个互补的文字，最好的做法可能是制作两到三个字体族，每种文字放到一个字体族中，然后把剩下的文字单独作为一个字体族，以在多语言文字排版中作为回退（fallback）。

副版本号的更新则对应小的改变，比如改变纵向规格（vertical metrics）和水平跨距（horizontal side bearings）、调整字间距（kerning）或对某些字形（glyphs）做微小的修改。这些改变会使使用这个字体排版的文档结构有细微的改变（尽管多数情况下很小）。这里有[一个例子](http://www.fastcodesign.com/3033126/roboto-rebooted-why-google-plans-to-update-its-font-like-the-rest-of-its-products)：

![Comparison of Roboto v1 and Roboto v2](http://c.fastcompany.net/multisite_files/fastcompany/imagecache/inline-large/inline/2014/07/3033126-inline-i-thenewroboto2.jpg)

为了完成对一种文字的支持而加入十几个字形（glyphs）很有可能只更新副版本号，特别是在垂直规格（vertical metrics）没有改变的情况下。

补丁级别的更新一般指的是在不明显改变规格（metrics）和字形（glyphs）设计的调整，例如改善 hinting 或修改元数据，这样的更新一般都不会影响最终文字排版的效果。但可惜的是，补丁版本 OpenType 并不支持在元数据中写入补丁版本号（就是在第三个位置的版本号），所以常见的替代做法是更改副版本号。

版本号最多只能有五位数，比如 `2.00099`。

如果你想发布了一款自由字体，[Github Releases](https://www.google.com/search?q=github+releases) 的信息会对你有所帮助。

### 字体族命名

微软费了好大的劲让为旧版 Windows 设计的软件在新版本 Windows 上也能运行，以此鼓励人们更新换代。同样，在 Windows 3 中引入的基础 TrueType 字体模型现在仍然可用，这也就是为什么 Windows 不支持超过 4 种基本风格（正体、粗体、斜体和粗斜体）的字体族。

这就是说字体设计者们要设计一个在所有操作系统中都能用的字体族名称。使用 OpenType 可以轻松做到这一点。OpenType 在分别在字体族名和风格名中补充了「Preferred Family Name」和「Preferred Style Name」，使得不支持 OpenType 的软件也能兼容。

《[字体族命名](https://docs.google.com/spreadsheets/d/1ckHigO7kRxbm9ZGVQwJ6QJG_HjV_l_IRWJ_xeWnTSBg/edit#gid=0)》这份文档会给你更多帮助，它是由来自波兰的字体专家 Adam Twardoch 在 [Fontlab 论坛上的帖子](http://forum.fontlab.com/index.php?topic=313.0)中提供的信息整理而来的。

<!-- （译者注释：搞不懂为什么下边有一段 Also） -->

又及：

* 删除 NAME 表中所有 PID=1 的键 &mdash; 这是为 Mac OS 9 或者更早版本准备的，已经是十多年前的了
* 删除 id 为 18 的 NAME 表 &mdash; 这个表也是只为 Mac OS 9 准备的