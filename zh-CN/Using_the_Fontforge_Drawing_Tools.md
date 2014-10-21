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

为了详细说明，有两种情况你需要放弃水平/竖直的B&eacute;zier路径：

- If you want to change the overall slope of your curve, as with the upper-left part of the ‘a’
  below that’s being kept almost flat:  
  <img src="images/bezier_sample_2.png" alt>
- If you want to place breaks in your letterforms, as with the lower-left part of the ‘g’ below
  &ndash; that’s typically where you will want to use a *Coin* (besides for drawing lines):  
  <img src="images/bezier_sample_4.png" alt>

<p class="note"><b>Note:</b> As you can see, when setting breaks with a <i>Coin</i>, the
direction of each handle should be tangent to the curve where it arrives.</p>

## Mastering FontForge’s drawing tools

From the main window, double-click on one of the glyph boxes to launch the Glyph Window.

<img src="images/glyph_window.png" alt>

<div class="note">
<p><b>Note:</b> The numbers along the top where the x and y axis intersect indicate, from left to
right:</p>

<ul>
<li>The current (x,y) location of your cursor on the canvas</li>
<li>The location of the most recently selected point</li>
<li>The relative position of your cursor to the selected point</li>
<li>The distance between your cursor and the selected point</li>
<li>The angle from the selected point to the cursor (relative to the baseline)</li>
<li>The current magnification level, followed by the name of the active layer.</li>
</ul>
</div>

<p class="warn"><b>Caution:</b> Sometimes, it seems like FontForge is not responding when you are
inside the Glyph Window. It might that there is an open dialog box hidden behind it &ndash; so just
move it and process the dialog box.</p>

A *Line* consists of 2 points.

<img src="images/tools_line_points.png" alt>

A *Spline* consists of 4 points: 2 end points of the spline and 2 ‘handles’, which describe the slope
of the spline at those end points.

<img src="images/tools_splines_points.png" alt>

### Copy, paste, cut and delete points, splines and lines

As with most drawing softwares, FontForge allows you to Copy, Cut, Paste or Delete any point, line
or spline. These commands are available in the Edit menu, or using your OS’ typical keystrokes (also
shown alongside each command in the menu).

## Familiarizing yourself with the drawing tools

Now that you know your way around the canvas, it’s time to get acquainted with the tools.

### Point and Zoom

<img src="images/point_zoom.png" alt>

Point and Zoom behave similarly to the equivalent tools in other applications.  
The pointer is a selection tool, used to select points, paths, and other objects on the canvas.  
The Zoom tool lets you zoom in (Z) easily; in order to zoom out: go to the View menu and select
*Zoom out* (X) or *Fit*.

Note that you can also momentarily switch to the pointer tool while using another by holding down
the Control (Ctrl) key.

### The Freehand tool

<img src="images/freehand_tool.png" alt height="28" width="27">

The Freehand tool allows you to sketch out irregular paths.

On the drawing area, click and hold, then move around to draw. Switch back to the pointer tool, and
you can select points on the path you have drawn.

When you select one of the points on the path, it will turn into a yellow circle. If the selected
point is on a curve, it will display its control points with a magenta handle and a cyan handle. You
can grab either handle and drag it around to change the shape of the curve.

### The point tools

Okay, now let’s go about using the point tools.

<img src="images/point_tools_labelled.png" alt width="291">

To add a point to a path, first select any of these tools, then click on the path and give it a
little push. You will get a new point on the line.

The Curve point tool is used to add a point in a curved segment.  
The HVCurve point tool constrains the new points so that they have either horizontal or vertical
control points &ndash; this is important for setting up extrema points.  
The Corner point tool allows you to make a sharp bend in the path.  
The Tangent point tool allows you to transition from a straight segment to a curved segment along
the path.

### The Pen tool

<img src="images/addpoint_tool.png" alt height="28" width="28">

The Pen tool allows you to add a point on the curve and drag out its control points.

### Spiro

<img src="images/spiro.png" alt height="28" width="28">

Selecting the Spiro tool puts you into Spiro drawing mode. Spiro drawing allows you to draw curves
that reflow as you reposition the nodes. Some people prefer this to the standard approach (known as
B&eacute;zier editing), but if you are used to B&eacute;zier editing you might find that it does
some unexpected things.

### Knife

<img src="images/knife.png" alt height="27" width="28">

The Knife tool allows you to cut splines in two. This comes in handy if you have drawn a shape, but
only need part of it.

### Ruler

<img src="images/ruler.png" alt height="28" width="27">

The ruler tool gives you measurement and coordinate information. When you use it, it displays a
floating ‘tooltip’ next to the cursor. If you hover your cursor over a point, the tooltip gives you
even more detailed measurement and coordinate information. If you bring it next to a spline, it
gives you information about the curvature and radius. Most usefully, if you click and drag the ruler
tool, you will see the distance you have dragged the cursor, plus every intersection that you have
stretched across.

### The transform tools

There are six transform tools:

<img src="images/transform_tools_labelled.png" alt width="400">

**Note:** For all of the Transform tools, if you double-click on the tool, you can enter numeric
values.

The Scale tool lets you freehand rescale an object. Holding down the Shift key allows you to scale
an object while constraining it to the proportional ratio.

The Rotate tool lets you free-rotate an object. It rotates the selected object around the position
where you initially click.

The 3D rotate tool lets you rotate an object in the third dimension, and projects the result on the
x-y plane.

The Flip tool allows you to flip a selection either horizontally or vertically. The point at which
you click the mouse is the point of origin of the transformation.

**Note:** After flipping a point you will probably want to apply Element &gt; *Correct Direction*.

The Skew tool lets you horizontally skew the selection either clockwise or counterclockwise
(withershins is how the dialog refers to counterclockwise).

The Perspective tool gives you another way to distort a shape in a nonlinear way.

**Note:** There is no numerical option for the perspective transformation.

### The Rectangle/Ellipse and Polygon/Star tools

These tools allow you to draw primitive geometric shapes, which is faster than constructing those
shapes out of separate line segments.

<img src="images/rectangle_poly_labelled.png" alt width="500">

Clicking the chevron area on these tools will give you the option to switch to the alternate tool.
If you double-click on either of the tools, you can open the shape type’s options.

Rectangle options: corner style and bounding box (corner or center out).

Ellipse options: bounding box or center out.

Polygon options: number of vertices.

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