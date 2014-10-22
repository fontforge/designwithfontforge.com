---
published: true
layout: bookpage
weight: 11
category: Getting To Know FontForge
title: 使用FontForge绘制工具
---

在FontForge中设计字体的时候将会用到一些工具和实用工具，我们开始先使用一些能让用户对矢量图形感到熟悉的绘制工具&ndash;这方面的经验有显著不同。
我们在看FontForge的绘制工具前首先来理解Bézier曲线如何工作。

## 理解Bézier曲线

Bézier曲线的概念指的是一个特别的数学上的表示，用来数字化地产生平滑的曲线。通常使用*二次方*和*三次方*Bézier曲线&mdash;FontForge也支持*Spiro*曲线，设计者的另一种可以替换的表现。

在本章中，我们只讨论*三阶*路径，它在绘制字形时普遍使用。*Spiro*路径将在下一章讨论，*二阶*曲线在绘制时很少用到，只会在TrueType字体中找到&ndash; 他们更常出现在构建时.

一个典型的B&eacute;zier曲线由一个锚点和标示全部方向的两个手柄组成&mdash; 每个手柄的长度决定了一端的曲线的长度&ndash;如下。

### 不同类型的点

#### 曲线点（显示为圆形的点）

*曲线点*有两个手柄，每个都连接到另一个，因此他们之间的线是直的, 目的是在每一端都产生平滑的曲线。
 
<img src="images/tools-curve-point.png" alt>

#### H/V曲线点（显示为菱形的点）

*H/V曲线点*（horizontal/vertical）是对齐到水平或竖直轴曲线点的变体&ndash;一个使B&eacute;zier曲线形态正确的必要工具（其他同样作用的工具见下节）。

<img src="images/tools-HV-point.png" alt>

#### 拐角点（显示为正方形）

*拐角点*可以有0、1或2个B&eacute;zier手柄。每个手柄的位置相对其他独立，适合用来构造不连续的轮廓。没有手柄时，拐角点产生直线。

<img src="images/tools-square-point.png" alt>

<img src="images/tools_corner_point_2.png" alt>

<img src="images/tools-corner-point-3.png" alt>

#### 切点（显示为三角形或箭头）

如果你希望从一条直线开始然后是平滑的曲线，那么你需要使用切点。
一个*切点*在一端留下直线，另一端的B&eacute;zier手柄是其方向&ndash;这保证了线条和曲线间连续过渡。

<img src="images/tools-tangent-point.png" alt>

### 使其正确

为了产生合适的曲线&ndash;使用最少控制点并减轻光栅化，锚点应该始终放置在**曲线极值**处，并且除非你的字母中有中断，否则确定路径的线应该是**水平或者竖直**的。

<img src="images/bezier_sample.png" alt>

<div class="note">
<p><b>注意：</b>如果你的控制点没有放置在极值出，FontForge将会用一个瞄准图标指出实际的极值处：</p>

<img src="images/bezier_sample_3.png" alt>

<p>那么你这样修正：复制你当前的轮廓到另一个图层，移动周围的控制点使其排列正确&ndash;否则FontForge验证工具将会自动在极值处添加点，在该点处你可以通过<i>右击 > Merge</i>来合并<br>你放错的锚点。
更多相关信息在稍后的<a href="Making_Sure_Your_Font_Works_Validation.html">
确保你的字体有效，验证</a>一章。</p>
</div>

详细说来，有两种情况你需要放弃水平/竖直的B&eacute;zier路径：

- 如果你希望改变你的曲线使其整体倾斜，正如下面的“a”的左上部保持者平坦：
  <img src="images/bezier_sample_2.png" alt>
- 如果你希望在字母形式中放置中断，正如下面的“g”的左下部&ndash;这是你希望使用拐角的典型（除了画线以外）： 
  <img src="images/bezier_sample_4.png" alt>

<p class="note"><b>注意：</b>正如你所看到的那样，当你用一个<i>拐角</i>设置中断的时候，每个手柄的方向应该是曲线延伸方向的切向。</p>

## 掌握FontForge的绘制工具

在主窗口中，双击其中一个字形的各自来打开字形窗口。

<img src="images/glyph_window.png" alt>

<div class="note">
<p><b>注意：</b>x轴和y轴交叉的地方上面的数字从左到右分别指示：</p>

<ul>
<li>你的鼠标指针在当前画布的(x,y)位置</li>
<li>最近选择的点的位置</li>
<li>你的鼠标指针与选择的点的相对位置</li>
<li>你的鼠标指针和选择的点之间的距离</li>
<li>选择的点和鼠标指针之间的角度（相对于基线）</li>
<li>当前放大级别，活动图层的名称紧随其后</li>
</ul>
</div>

<p class="warn"><b>当心：</b>有时当你在字形窗口内时，FontForge看起来无响应。这可能是由于一个打开的对话框隐藏在其后&ndash;所以只需要移动它并处理对话框。</p>

2个点组成的直线。

<img src="images/tools_line_points.png" alt>

一个*样条曲线*包含了4个点：2个结束点和2个描述样条曲线在结束点的斜率的手柄。

<img src="images/tools_splines_points.png" alt>

### 样条曲线和直线的复制、粘贴、剪切和删除

就像大多数绘制软件一样，FontForge允许你复制、剪切、粘贴和删除任何点、直线和样条曲线。这些命令可以在Edit菜单找到，或者使用你的操作系统的快捷键（也展示在了菜单中每个命令的旁边）。

## 熟悉绘制工具

现在你已经知道了画布周边功能用法，是时候熟悉画布工具了。

### 指针和缩放

<img src="images/point_zoom.png" alt>

指针和缩放工具的用法和其他应用的的等价工具类似。
指针是一个选择工具，用来选择画布上的点、路径和 其他对象。
缩放工具让你（在Z轴上）更方便地缩放；想要缩小：到View菜单下选择*Zoom out*（X）或者*Fit*。

需要注意的是，在你使用其他工具的时候，可以通过按住Control（Ctrl）键来暂时切换到指针工具。

### 手绘工具

<img src="images/freehand_tool.png" alt height="28" width="27">

手绘工具让你可以画出不规则的路径。

在绘制区域，鼠标按住拖动来绘制。切换回指针工具，你可以选择你刚才绘制的路径上的点。

当你选择路径上的一个点的时候，它将会变成一个黄色的圈。如果选择的点在曲线上，那么他将会显示出带有一个洋红色手柄和一个青色手柄的控制点。你可以拖动他们来改变曲线的形状。

### 指针工具

那么我们开始学习指针工具。

<img src="images/point_tools_labelled.png" alt width="291">

为了在路径上添加一个点，我们首先选择这些工具中的一个，然后在路径上点击并轻推一下。你就在线上添加了一个新的点。

曲线点工具用来在曲线段上添加一个点。
HVCurve点工具约束新点为水平或者竖直的控制点&ndash;这对设置极值点来说是重要的。
拐角点工具用来在路径上制作尖锐的转弯。
切点工具用来实现直线段到曲线段的沿着路径的过渡。

### 钢笔工具

<img src="images/addpoint_tool.png" alt height="28" width="28">

钢笔工具用来在曲线上添加点并拖出其控制点。

### Spiro

<img src="images/spiro.png" alt height="28" width="28">

选择Spiro工具会进入Spiro绘制模式。Spiro绘制可以在你调整节点位置的时候重排你的曲线。有的人相对于标准方法（称为B&eacute;zier编辑），更偏好这个方法，但是如果你习惯了B&eacute;zier编辑，你可能发现这种方法会做没有料到的事情。

### 小刀

<img src="images/knife.png" alt height="27" width="28">

小刀工具让你可以将样条曲线且为两段。如果你希望绘制一个图形但是只需要一部分，那么这个工具是合用的。

### 尺子

<img src="images/ruler.png" alt height="28" width="27">

尺子工具提供测量和坐标信息给你。当你使用时，在鼠标指针旁边显示一个浮动的提示框。如果你的鼠标指针悬停在一个点上，提示框提示框会展示更详细的测量和坐标信息。如果你在样条曲线上使用，它将告诉你曲率和半径。最有用的是，如果你点击拖动尺子工具，你将看到你拖动鼠标指针的距离，以及穿过图形的每个交点的信息。

### 变形工具

变形工具有6个：

<img src="images/transform_tools_labelled.png" alt width="400">

**注意：**对于每个变形工具，如果你双击工具，可以输入数值。

缩放工具可以让你自由手动缩放一个对象。按住Shift键可以在缩放的同时保持比例。

旋转工具可以自由地旋转一个物体。始终围绕你最初点击的位置来旋转对象。

3D旋转工具可以在第三维度旋转对象，并将结果投影在x-y平面上

翻转工具可以水平或者竖直地翻转选中的对象。旋转的原点是最初点击鼠标的点。

**注意：**翻转一个点后你很可能需要应用Element &gt; *Correct Direction*。

扭曲工具可以将选中的对象顺时针或者逆时针做水平扭曲。

透视工具让你能够以非线性的方式扭曲图形。

**注意：** 透视转换并没有数值选项。

### 矩形/椭圆和多边形/星形工具

这些工具让你可以绘制简单的几何形状，这样比使用分开的线段构建形状更快。

<img src="images/rectangle_poly_labelled.png" alt width="500">

点击工具区域可以切换到可选的另一个工具。如果你双击这个工具，会打开形状样式的选项。

矩形选项：拐角样式和扩展方式（拐角还是中心扩展）。

椭圆选项：边框扩展还是中心扩展。

多边形选项：: 顶点数量。

星形选项：星形的顶点数量和

Star options: number of star points and depth of points by percentage. The higher the percentage
setting, the longer the arms of the star.

### Mse1 and Mse2

<img src="images/danger.png" alt height="53" width="57">

Under the toolbar, you can view the current tool and the operations available to both mouse buttons:

- Left button (Mse1)
- Left button + Ctrl (^Mse1)
- Mouse wheel button (Mse2)
- Mouse wheel button + Ctrl (^Mse2)

This way, you can use a few different tools without having to repeatedly click on the toolbar.

<p class="warn"><b>Caution:</b> It appears that the Mse functionality doesn’t currently work
properly.</p>

### Layers

The FontForge canvas has three layers by default: the Guide layer, the Background layer, and the
Foreground layer. Guide layers are used to insert guides (such as x-height or cap-height guides).
Foreground layers and background layers are both used for drawing, but only the topmost foreground
layer will be rendered into your final font.

<img src="images/layers.png" alt height="96" width="108">

The eye icon indicates whether each layer is visible, and you can click to toggle the eye to make a
layer invisible. The C (or Q) indicates whether you’re using Cubic or Quadratic curves.

The #, B, or F refers to whether the type of each layer is a Guide layer, Background layer, or
Foreground layer, which is significant if you add more layers of your own. You can create and delete
additional layers using the plus (+) or minus (&minus;) buttons in this section of the toolbar.
Layer type and curve type can also be controlled by right-clicking (once you have additional
layers).

## Basic drawing

Next we will go over some basic drawing workflows, which you often find yourself in need of.

### Cutting a shape within another

1. Start by using the Rectangle tool to draw a rectangle within the drawing area of the Glyph
   window.
2. Next, use the Ellipse tool to draw an ellipse within the rectangle you just drew.  
   <img src="images/O%20at%2079%20from%20Untitled1%20-_010.png" alt width="917">
3. Go to the Element menu and choose *Correct Direction*. You will see that the two shapes merged,
   and that you essentially punched a hole in the center of the rectangle.  
   <img src="images/O%20at%2079%20from%20Untitled1%20-_011.png" alt width="917">

### Remove overlap

1. Add a star that overlaps the corner of the rectangle.  
   <img src="images/O%20at%2079%20from%20Untitled1%20-_012.png" alt height="744" width="917">
2. Select the star and the earlier shape. You only need to select one point of each overlapping
   shape, but it is okay to select extra points.
3. Go to Element &gt; Overlap &gt; *Remove overlap*. You will see that your two shapes have become
   one.  
   <img src="images/O%20at%2079%20from%20Untitled1%20-_013.png" alt>

### Add a Point

Using the Pen tool, click and hold in the middle of a line segment, then drag the mouse to change
the shape.

<img src="images/O%20at%2079%20from%20Untitled1%20-_014.png" alt width="917">

### Tangent points

Select the bottom-left corner point of your new shape (the intersection of the curve and the
straight line). From the Point menu, you will see that *Corner Point* is checked. Select *Tangent*.
This changes the square node to a triangle, but that is all it does until you do the next step:
extending control points.

To do so, choose Element &gt; *Get Info*, which opens the Point Info Window. From the Location tab
in that window, go to the Next CP field set and set the Distance to a large number, such as 75.
Click OK. You will see that the curve now smoothly enters the straight line.

<img src="images/O%20at%2079%20from%20Untitled1%20-_015.png" alt>

### Transformation

Now select about a quarter of the shape &mdash; the star and part of the ellipse in the middle.

<img src="images/O%20at%2079%20from%20Untitled1%20-_016.png" alt>

Choose the 3D Rotate tool, move to the middle of the selected area, and slowly click and drag until
you see something you like, then release. Here is an example of 3D Rotate used on the practice
image:

<img src="images/O%20at%2079%20from%20Untitled1%20-_017.png" alt height="739" width="914">

### Set stroke shape and width

So far you have used the Freehand drawing tool to draw a line. If you double-click the Freehand
tool, you get the Freehand dialog shown here, which contains a drawing window. This is where you
select pen shape and size. This dialog also appears when you choose the *Expand Stroke* option in
the Element menu.

<img src="images/Freehand_018.png" alt height="676" width="420">

Using the Corner tool, draw a polygon and click OK.

Now, draw a line with the Freehand drawing tool. When you release the mouse button, the new path is
automatically stroked with the shape you chose in the Freehand dialog, as shown here.

<img src="images/Q%20at%2081%20from%20Untitled1%20-_019.png" alt height="744" width="916">

## Keep drawing!

You should continue to experiment with the drawing tools until you feel comfortable that you can use
them to draw and transform whatever shapes you need. At this point, you are equipped to start
constructing the components of glyphs, but you should also take time to look at FontForge’s other
set of tools.  
The next chapter, [“Drawing with Spiro”], describes the Spiro drawing mode. Spiro drawing is
distinct enough from B&eacute;zier curve editing that it requires an explanation of its own.

[“Drawing with Spiro”]: Drawing_With_Spiro.html