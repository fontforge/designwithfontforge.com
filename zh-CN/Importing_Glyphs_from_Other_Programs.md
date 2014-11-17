---
published: true
layout: bookpage
weight: 92
category: Appendices
title: 从其他程序导入字形
---

在通用插图应用程序（Inkscape，Adobe Illustrator等）中绘制字形并将其作为EPS或SVG导入是有可能的。

## 手编SVG

#### 如何准备

* SVG文件确实需要`viewBox="0 0 1000 1000"`

* 宽度事实上并不重要，只要它比你的字形更宽。但是高度是1000对最容易的导入来说是重要的。

* `y=0`将会是顶部线并且`y=1000`将会是底部线。

* (可能有一些字形超出了这些线，FontForge可能会正确处理，但是我们并未测试。)

* FontForge默认会设置你的基线为`y=800`。在FontForge的坐标系统中，基线处在竖直范围的`0`点处。

* 为了在FontForge中设置基线到你希望的地方，在SVG中将y坐标作为你的基线。在FontForge的坐标系统中，这将是其顶部线的竖直点。
To set the baseline where you want it in FontForge, take the y coordinate for your baseline in SVG. That will be the FontForge vertical point for the ascender line in their coordinate system. (1000 - y)作为底部。打开`Element -> Font Info`，在General选项卡下的“Ascent”和“Descent”输入框输入顶部值和底部值。两者都是正数。字模高度（Em Size）应该保留1000（因为这是SVG单位的高度）。

* 当绘制字形时，我喜欢使用相对坐标。因此我以`<path d="M Xvalue,Yvalue`作为字形的开始。如果我可以自始至终从左边的点开始绘制字形，那么Xvalue将会是FontForge使用的默认的左跨距。你可以在字形导入后容易地调整它，并可能在测试字体后无论如何都需要调整。当我可以从基线开始绘制时，将基线值作为Yvalue很好。

* 总是使用a z来结束路径的d属性。导入的时候不会导入它，但是如果你忘记在路径最后的点后放置a z，那么在主窗口中字形不会显示正确除非你重启FontForge。

* 当绘制洞（像字母P）的时候，不要开始一个新的路径节点，只需要在第一个路径的结尾使用a z并使用mNewX,NewY开始新的路径，然后开始绘制洞。为路径使用属性fill-rule="evenodd"，它将会工作正常。

#### 工作流程

使用一个网页浏览器来渲染你正在制作的SVG。你可以使用一个被称作“template.svg”的1200乘1200的文件却渲染为800乘800，这样它在浏览器窗口中不会滚动。

在模板中，在`y=100, y=1100, y=(100 + {baseline, capheight, etc.}, x=100, x=1100`绘制引导线。

然后使用文档`<image xlink:href="LC_p.svg" x="100" y="100" width="1000" height="1000" />`将你正在制作的SVG字形导入。

现在你可以在一个窗口中手工编码你的字母，刷新浏览器来看它是否绘制在引导线的顶部。

## 自定义字形列表

1. 创建一个`namelist.txt`文件，可能使用一个电子表格来列出Unicode码点和字形名。例如：

```
0xEC00 octDotDhe
0xEC01 octDotDheDbl
0xEC02 octDotDheTrpl
0xEC03 octDotDheQdrpl
0xEC04 octDotLik
0xEC05 octDotLikDbl
0xEC06 octDotLikTrpl
0xEC07 minirLik
0xEC08 minirDhe
0xEC09 minirBawah
0xEC0A soroganDhe
0x-001 soroganLik
```

对于没有Unicode点的字形来说，使用-1的码点，正如上面例子的最后一行。

然后夹在FontForge并打开`Encoding -> Load NameList`然后使用`Rename glyphs`（由于`Load NameList`只添加自定义名称列表到重命名之后的命令 的可用选项集合）。