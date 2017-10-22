---
published: true
layout: bookpage_zh-CN
weight: 21
category: Getting To Know FontForge
title: 使用Spiro绘制
---

Spiro是一个使用更传统的B&eacute;zier曲线的替换方法来设计曲线的工具包。 尽管这是可选择的，FontForge可以包含Spiro模式安装，提供给你创造特定类型曲线的工具。如何在你的程序中包含Spiro库的详细信息参见[“安装FontForge”][“Installing FontForge”]。

Spiro绘制是一个不同的方法，可以用不同的方式完成你的曲线，解决你概念上的问题。请试验一下！

## Spiro工具集

[“使用FontForge绘制工具”][“Using the FontForge drawing tools”]一章描述的许多工具在Spiro模式下有相同的工具，但是其中一些在Spiro模式下工作地很不同。

<img src="../en-US/images/spiro_tools_labels.png" alt width="400">

Spiro点共有五种类型：

1. G4点，用于更温和的曲线
2. G2点，用于更尖锐的曲线
3. 拐角点，用于尖角的连接
4. 前约束点，在路径从曲线到直线转变的时候使用
5. 后约束点，在路径从直线到曲线转变的时候使用

## 使用Spiro绘制一个“S”

做完用Spiro绘制一个“S”的练习后，你将会熟悉Spiro。

<p class="note"><b>提示：</b>在Spiro模式绘制的时候，经常从一个G4或者
G2点开始。在FontForge中从其他类型的点开始并不真的生效。</p>

在你的“S”的最上点出放置一个G4点，接下来是拐角点，然后是另一个拐角点。顺时针地完整字母的形状。

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_023.png" alt>

接下来是一个G4，一个前约束点和一个后约束点。

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_022.png" alt>

然后在两个拐角点后添加另一个G4点。

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_024.png" alt>

然后一个G4，紧跟着是一个前约束点，一个后约束点。

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_025.png" alt>

然后添加一个或多个G4点，最终通过在G4点工具中点击开始点，从开始点关闭图形。

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_026.png" alt>

现在你几乎有了一个“S”！开始微调周围的点，得到一个你想要的S。

<div class="warn"><p>哎呀，怎么了？</p>

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_032.png" alt>

<p>不要担心 &mdash; Spiro有时会做出一些滑稽的事情。只需要点击<i>Undo,</i>或者一直微调使事情回到正轨上来。</p></div>

现在你应该有了类似这样的东西：

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_028.png" alt>

从Spiro模式切换回B&eacute;zier模式。你会看到得到的曲线上有许多点。你可能希望清理其中一些。 

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_031.png" alt>

为了清理额外的点，到Element菜单选择<i>Simplify &gt; Simplify</i>。然后点击<i>Element &gt; Add Extrema</i>。最终点击<i>Element &gt; Round &gt; To Int</i>。做完这些操作后你将会看到类似这样的东西：

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_029.png" alt>

你可以继续试验Spiro模式，感受到与B&eacute;zier绘制的不同。
术语是不同的，但是有了FontForge的其他绘制和调整工具，练习将会使你作出你希望的东西来。

[“Installing FontForge”]: Installing_Fontforge.html
[“Using the FontForge drawing tools”]: Using_the_Fontforge_Drawing_Tools.html