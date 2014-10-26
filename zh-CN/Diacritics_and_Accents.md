---
published: true
layout: bookpage
weight: 26
section: Workflow
title: 变音和重音
---

变音是添加或结合到一个字母上的标记，经常用来字母的声调改变为添加的标记。一些变音标记（比如“acute”和“grave”）经常被称为重音。变音标记可能出现在一个字母的上面或者下面，一个字母内或两个字母之间。

<img width="5%" src="images/dia_a_grave.png"/>
<img width="5%" src="images/dia_a_circumflex.png"/>
<img width="5%" src="images/dia_a_tilde.png"/>
<img width="5%" src="images/dia_a_dieresis.png"/>
<img width="5%" src="images/dia_c_ogonek.png"/>
<img width="5%" src="images/dia_c_cedilla.png"/>
<img width="5%" src="images/dia_c_dot.png"/>
<img width="5%" src="images/dia_g_comma.png"/>
<img width="5%" src="images/dia_hungarumlaut.png"/>


### 一些变音的例子

<p class="imagebox"><img src="images/dia_a_grave.png"/></p>

小写的“a with grave”（unicode u+00e0）。在一个字体中通过将小写的“a”字形（unicode u+0061）和“combining grave accent”字形（unicode u+0300）联合起来创造。

<p class="imagebox"><img src="images/dia_a_circumflex.png"/></p>


小写的“a with circumflex”（unicode u+00e2）。在一个字体中通过将小写的“a”字形（unicode u+0061）和“combining circumflex accent”字形（unicode u+0302）联合起来创造。

<p class="imagebox"><img src="images/dia_c_ogonek.png"/></p>

小写的“a with ogonek”（unicode u+0105）。在一个字体中通过将小写的“a”字形（unicode u+0061）和“combining ogonek”字形（unicode u+0328）联合起来创造。

<p class="imagebox"><img  src="images/dia_c_cedilla.png"/></p>

小写的“c with cedilla”（unicode u+00e7）。在一个字体中通过将小写的“c”字形（unicode u+0063）和“combining cedilla”字形（unicode u+0327）联合起来创造。

<p class="imagebox"><img  src="images/dia_hungarumlaut.png"/></p>

小写的“o with double acute”（unicode u+0151）。在一个字体中通过将小写的“o”字形（unicode u+006f）和“combining double acute accent”字形（unicode u+030b）联合起来创造。

<hr>

FontForge可以用2种主要的方式自动地创造带重音的字符：

1. FontForge包含了放置变音标记位置的基本信息，所以可以自动地构建几乎所有的重音符号。
2. 为了对变音符号放置有更好的控制，FontForge可以给予用户创建的锚点的位置来放置变音标记。

<div class="note">
<p><b>注意：</b>如果你没有使用锚点和查找表来控制变音标记的位置，那么如果一个特定的变音标记没有出现在你的字体中，FontForge会使用一个类似的间隔字符来替代。例如如果要联合的“acutecomb”（u+0301）没有出现在你的字体中，那么FontForge将在自动构建任何添加acute accent的字形时会使用标准的“acute”（u+00b4）字符。如果“acutecomb”出现了，那么FontForge将会总是使用它，除非你特别强制FontForge使用间隔字符来构建有重音的字形。</p>
</div>

## FontForge对变音标记的基本自动替换

在FontForge的“Element”菜单，有一个“Build”功能可以用来创建变音字符、某些组合字符和一些重复的字符。使用“Element > Build > Build Accented Glyph”功能可以在FontForge中自动构建带重音的字符。这个功能也可以通过快捷键“ctrl + shift + a”来使用。因此如果要使用“a acute“字符（u+00e1），我们需要已经创造出小写的“a”（u+0061）和“acutecomb”字形（u+0301）。然后选择“a acute”字符位置并使用“Element > Build > Build Accented Glyph”功能，FontForge将会放置一个到小写的“a”字形引用和一个到“acutecomb”字形的引用到“a acute”字符位置（如下）。

<div class="note">
<p><b>注意：</b>如果一个变音标记字形没有出现在你的字体中，那么FontForge将会使用一个类似的间隔字符来替代。例如如果要联合的“acutecomb”（u+0301）没有出现在你的字体中，那么FontForge将在自动构建任何添加acute accent的字形时会使用标准的“acute”（u+00b4）字符。如果“acutecomb”出现了，那么FontForge将会总是使用它，除非你特别强制FontForge使用间隔字符来构建有重音的字形。</p>
</div>

<img width="500px" src="images/dia_auto_a_acute.png"/>

变音标记的自动放置可以通过偏好设置来调整，可以在FontForge的偏好设置菜单“File > Preferences > Accents”下的“accents”区域找到（如下）。 

<img src="images/preferences_accents.png" />

“PreferSpacingCharacters” - 选择这个选项为“On”将会强制FontForge使用间隔字符来构建重音字形，即使适当的联合字符出现。这个选项在使用锚点来放置变音标记时失效。

“AccentOffsetPercent”控制基本字形和标记字形的竖直间距的总量。这里输入的数值时字体的em square的百分比。所以如果数值是“6”将会使标记字形到基本字形的距离将是字体的em square的百分之六。

标记字形水平放置的偏好设置页可以设置。在“AccentCenterLowest”的偏好设置选择“On”将会使重音字形处于基本字形的最低点的中央。

在“AccentCenterHighest”的偏好设置选择“On”将会使重音字形处于基本字形的最高点的中央。

上面两个偏好设置都选择“Off”将会使重音放置在基本字形的宽度中央。上面两个偏好设置都选择“On”将会使重音放置到字符空间的中央。

## 使用锚点来放置变音

在FontForge中构建重音字符的最精确有效的方式是使用“锚点”。

锚点允许你精确地控制变音标记在有重音的字符上相对于每个基本字形的位置。因此在字符“a ogonek”中，“a”字形时基本字形并会放置在正常位置，“ogonek”字形是“标记字形”并会放置在某个位置使得“标记字形”的锚点与基本字形的锚点一致。

在下面的例子中，创造一个“a ogonek”字符，创建了一个称作“底部”的锚点类别。在小写的“a”字形中，“底部”锚点放置在“a”的茎的底部。这是“基本字形”的锚点的形式。

<img src="images/dia_a_anchor.png"/>

在“ogonek”字形中，标记锚点的形式中的底部锚点放置在字形的顶部（如下）。

<img src="images/dia_ogonek_anchor.png"/>

那么在“a ogonek”字符构建时（使用“Build Accented Charcter”功能），“底部”标记锚点将会放置在与“底部”基本锚点相同的位置，保证ogonek字形的引用正确地放置在“a”的引用的茎的尾部（如下）。这一精确自动的位置只有在使用锚点来放置基本和标记字形的时候才可以使用。

<img src="images/dia_a_ogonek_anchors.png" />

### 为放置变音标记创建锚点（到基本位置的标记）

FontForge uses lookup features know as 'mark-to-base' for creating and positioning anchor points. These mark-to-base lookups can be created and edited in the GPOS Lookups section of the Font Info of your font ( 'Element>Font Info>Lookups>GPOS').

From the GPOS Lookups window, click on 'Add Lookup' and choose the Type 'Mark to Base Position', then choose 'Mark Positioning' from the 'New' column of the Feature pane (see below). Click 'OK' to close the window.

<img src="images/dia_new_mark_to_base_1.png"/>

With the new lookup selected, click 'Add Subtable'. In the resulting window (see below) you can create your anchor classes.

<img src="images/dia_anchor_new_subtable.png" />

In this example (below), two anchor classes have been created, 'top' and 'bottom'. The 'top' anchor class will be used to position diacritic marks that are placed above glyphs, and the 'bottom' anchor will be used for positioning marks below glyphs.

<img src="images/dia_marks_classes_add.png" />

To place an anchor with a glyph, simply use the right mouse click in a glyph edit window, and select the function 'Add Anchor' from the right-click menu.
The dialogue box that appears enables you to assign whether the anchor is a base or mark anchor. The anchor's position can also be fine tuned from this dialogue box. Alternatively the anchor can be moved by being dragged to position with the mouse, or moved by using the up, down, left and right keys. The anchor point can also be edited by right clicking on the anchor point and choosing 'get info' from the mouse click menu.

### Control of Anchor Classes

FontForge also contains a usefull graphical interface for controlling the position of whole classes of anchor points, enabling the user to fine tune the position of, for example, all the acute accents at once in a font, or all the anchors in a class contained in, for example, characters that reference the lowercase 'e'. In the examples below we can see how to use this graphical interface to fine tune the position of all acute accents in a font, and, to fine tune a class of anchors across all characters that reference the lowecase 'e' glyph.

Once you have created anchor classes within your mark-to-base position lookups, and added anchors to some glyphs, you can control these classes from "Element>Font Info>Lookups>GPOS" and then editing a subtable that contains anchor classes. You will then see this window;

<img src="images/dia_anchor_control_1.png" />

From here select the class you wish to edit and click on the 'Anchor Control' button. You will then be presented by a graphical interface to that class. In the examples below we are editing the control of the 'top' class. In the first example (below) the lowercase 'e' has been selected from the 'Bases' section of the drop down menu. When a base glyph is selected, all characters that reference that glyph and contain a 'top' base anchor, will be displayed in the preview pane. We can then adjust the position of the 'top' base anchor to see how it effects the position of all glyphs that contain the 'top' mark anchor.

<img src="images/dia_anchor_control_e.png" />

In the second example, below, the 'acute' glyph has been selected from the 'Marks' section of the drop down menu. When a mark glyph is selected then all glyphs that reference the selected glyph and contain a 'top' mark anchor will be displayed for preview.


<img src="images/dia_anchor_control_mark.png" />


## Other resources

* http://urtd.net/projects/cod/about
* http://ilovetypography.com/2009/01/24/on-diacritics/
* http://diacritics.typo.cz/
* http://scripts.sil.org/ProbsOfDiacDesign
* http://www.microsoft.com/typography/developers/fdsspec/diacritics.htm
