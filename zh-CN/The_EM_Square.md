---
published: true
layout: bookpage_zh-CN
weight: 12
category: workflow
title: EM Square
---

&mdash; 也被称作“EM size”或者“UPM”。在一个字体中，每个字符都放置在其空间容器内。在传统的金属字模中，这个容器就是每个字符的实际金属块。每个字符的高度是统一的，这样每个字模可以整齐地放进行和块中（如下）。

<img src="../en-US/images/MetalTypeZoomIn.JPG" alt>

字模的高度被称为“em”，起源于大写的字符“M”的宽度；这个字母的比例被做成了方形（因此有了“EM Square”的称呼）。em size是根据字模计算出的点值。因此一个10磅的字体em也是10磅（如下）。
 
<img src="../en-US/images/em-metal-type.svg" alt>

在数字化字体中，em是空间的数字化定义总量。在OpenType字体中，UPM或em大小通常是1000单位。在TrueType字体中，UPM约定是2的幂，通常是1024或2048。

当时用字体来设置样式时，em将会缩放到需要的点值。这意味着对于10磅的字体样式，1000单位在这个实例中将会缩小到10磅。

因此如果你的大写的“H”时700单位高，那么它在一个10磅的字体中将会被缩放到7磅高。

### 在字形窗口中设定

知道了你的字体将会使用1000，1024或2048UPM后，你需要设定你的字形的绘制，以保证你字体样式的所有面都充分地填入UPM空间内。

Em square的大小设定方法是*Element > Font Info&hellip;*然后点击General选项卡，你将会看到*EM*设置。这个值将会分配到*顶高*和*底深*上，分别在基线的上下。

基线：

<img src="../en-US/images/baseline.png" alt>

大写高度:

<img src="../en-US/images/capheight.png" alt>

x高度:

<img src="../en-US/images/xheight.png" alt>

在你设计字体的后期，你需要设置Blue值，这个值为PostScript画轮廓而保留，也保留给FontForge自动微调 &mdash; 无论你在做哪个轮廓。

你可以在*Element > Font Info&hellip;*，*PS Private*中找到这个设定。FontForge可以首先根据你的轮廓猜测初始值，但是为了上突/下突，你必须自行修改 &mdash; 这个概念在几章后的[创造“o”和“n”][“Creating ‘o’ and ‘n’”]中；让我们先上手FontForge及其绘制功能。

[“Creating ‘o’ and ‘n’”]: Creating_o_and_n.html
