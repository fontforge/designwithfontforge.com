---
published: true
layout: bookpage
weight: 31
category: workflow
title: 最终输出，生成字体文件
---

尽管你可以在FontForge中做大范围的测试，但是你将会需要生成可安装的字体文件，从而在开发进程中执行真实世界的测试。此外，你的终极目标当然是创造一个其他人可以安装和使用的输出格式的字体。不管构建字体是为了测试目的还是为其他人使用而发布，你将使用<em>Generate Fonts </em>工具（在File菜单可以找到）来构建一个有用的输出字体。但是在构建最终产品的时候，你会希望使用一些额外的步骤。

FontForge可以将你的字体导出为各种不同的格式，但是在实践中只有两种是重要的：TrueType（使用<em>.ttf</em>文件名扩展）和OpenType CFF（使用<em>.otf</em>文件扩展名）。从技术上来说OpenType格式可以包含一些其他选项，但是CEF类型是广泛使用的一个。

## 用于测试的快速的脏的一代

为了测试目的的构建字体文件&ndash;比如在一个网页浏览器中检查艰巨&ndash;你需要只确保你的字体通过了必要的验证测试。

你可以使用Element菜单下的<em>Validate Font</em>工具（更详细的解释参见验证字体一章），或者你可以选择所有的字形（按Control-A或者从“Edit”菜单选择Select -&gt; Select All），然后运行一些命令来应用一些零散的基本改变。确保在你的进程更进一步之前保存你的工作，一些为了导出的验证会以微妙的方式修改你的字形的形状。

对于OpenType字体来说，首先要修正所有路径的方向。按Control-Shift-D或者在“Element”菜单下选择Correct Direction”。接下来检查确保并没有漏掉未闭合的路径。勾选“Paths”选项卡下的<em>Open paths</em>选项，点击OK来运行测试。一旦你的字体通过测试没有错误，你就准备好生成OpenType输出。

对于TrueType字体来说，需要一些额外的步骤。你应该首先想上面描述的一样修正所有路径的方向。接下来调整所有的点使其拥有整型坐标：按Control-Shift-_（下划线）或者从Element -&gt; Round菜单中选择<em>To Int</em>。最终，像上面描述的那样打开“Find Problems”工具，选择<em>Open paths</em>，同时在“Refs”选项卡下选中所有。

在你运行这些测试没有错误时，你需要将你的路径转换为二次曲线。从“Element”菜单打开“Font Info”窗口。点击“Layers”选项卡，勾选<em>All layers quadratic</em>选项。点击窗口底部的OK，你就准备好生成TrueType输出。

### 构建字体文件

打开“File”菜单下的<em>Generate Fonts</em>窗口。窗口的上半部分展示了熟悉的文件选择视图&ndash;当前目录的文件列表，一个文本框可以让你输入文件名，和导航到其他文件夹或者目录的按钮。这确实是帮你快速找到保存你的输出文件位置或者在你希望覆盖之前保存的字体文件时选择已有字体的方法。所有你需要看的选项在窗口下半部分。

<img src="images/generate.png" alt="">

在左边是一个下拉菜单，你可以选择你希望输出的字体格式。如上所述你应该选择<em>TrueType</em>或<em>OpenType (CFF)</em>。右边确保选中<em>No Bitmap Fonts</em>。在下面一行，确保“Force glyph names to:”的选项<em>No Rename</em>选中。你如果你希望，你可以检查“Validate Before Saving”选项，但是这是可选的。保留“Append a FONTLOG entry”、“Prepend timestamp”和“Upload to the Open Font Library”不勾选。

点击“Generate”按钮，FontForge将会构建你的字体文件。你可以用其他应用程序夹在字体，并运行任何测试，但是当你返回编辑时，记得重新打开在生成你的<em>.ttf</em>或<em>.otf</em>输出之前保存的字体的版本。

## 生成最终版本

设计你的字体是一个迭代的进程，但是最终你必须宣布你的字体完成或者至少准备好公众消费的那天到来了。在那时，你将会再次生成一个.ttf或者.otf输出文件（或者甚至两者都有），但是在做这之前，你将需要进行一些额外步骤来创建最符合标准和用户友好的字体文件版本。

首先，遵循用于测试的快速的脏的一代一节概述的相同的准备步骤。尤其是如果你准备创建一个TrueType文件时，记得修改你的字体为<em>All layers quadratic</em>。

### 删除重叠部分

如你所知，保持你的字母形式为独立组件的联合是好主意：茎、弧、衬线和每个字形的其他部分。但是尽管这一技术对于设计和改善形式来说非常好，但是你希望你最终发布的字体每个字形有简单的轮廓。这会减少一点文件大小，但是更重要的是它减少渲染错误。

FontForge有<em>Remove Overlap</em>命令可以自动联合一个字形分开的组件组成一个轮廓。选择一个字形（或者甚至使用Control-A来选择所有字形），然后按Control-Shift-O或者从“Element” －&gt; “Overlap”菜单选择Remove Overlap。但是一个警告值得注意：如果一些形状中有一个形状沿着错误的方向（也就是形状最外边时逆时针方向），那么FontForge不能合并这些形状。尽管无论如何你应该修复一个沿着错误方向的错误，但是这个错误的路径是它自己存在的错误。

### 简化轮廓和添加极值点

你也应该尽可能简化你的字形&ndash;不是消除细节而是消除无用的点。这会轻微减小每个字形的文件大小，字体中全部字符集合加起来非常可观。

从“Element”菜单选择“Simplify” -&gt; <em>Simplify</em>（或者按Control-Shift-M）。这个命令将会合并去掉所有选择的字形上的多余的曲线上的点。在某些情况下，仅会有一些点被删除，其他情况下可能有很多。但是应该执行简化后并不显著地改变任何字形的形状。如果你注意到一个特定的字形被<em>Simplify</em>被修改了太多，随意撤销这个操作。你也可以尝试使用相同菜单下的<em>Simplify More</em>命令；它提供了可调分组参数可能会很有帮助。

无论如何，在你完成了简化步骤后，你将需要添加丢失的极值点。从“Element”菜单选择<em>Add Extrema</em>（或者按Control-Shift-X）。如前所述，在你编辑时在每个字形的极值处放置曲线上的点是好主意。然而你仍然必须在准备最终输出版本时执行这一步，因为<em>Simplify</em>步骤偶尔会删除极值点。

### 一切取整为整型坐标

最后执行的准备步骤是将所有点（包括曲线上的点和控制点）取整为整型坐标。这对于生成TrueType输出来说是强制的，但是对OpenType来说也是非常推荐的。它会导致在字体显示时更锐利的渲染和更适合网格，而不需要任何额外的设计工作。

为了使所有点取整为整型坐标，选择“Element” -&gt; “Round” -&gt; <em>To Int</em>。

一旦这个操作完成，你可能注意到有东西令人迷惑。有时候仅仅由于曲线独特性引起，取整到整型坐标的进程，简化字形，增加缺失的极值点可能互相冲突。这种情况出现的一个例子是一个曲线外边有一个控制点错过了水平或者竖直方向；在这种情况下对它取整到整型坐标可能轻微地移动曲线并改变其极值点位置。

这并不是这个难题的一个一蹴而就的解决方案；仅有的保证的修复是对受影响的字形循环重复步骤直到它们在一个点稳定下来，三个操作不再互相干扰。这可能需要耗费多次循环，但是它发生是罕见的。

### 验证

你的字体在生成最终输出之前应该通过必要的验证测试。像将点取整到整型坐标步骤一样，尽管有时其他准备操作能提出错误，因此在构建最终输出之前运行全字体验证是好主意。FontForge的验证工具一章将会给你检查什么的细节。

### 关于提示（Hinting）

提示指的是使用数学上的指引在字体中渲染矢量曲线，渲染的方式是用栅格化输出设备的像素网格（不论是墨水点或墨粉在纸上构成的网格还是计算机显示器的发光点构成的网格）精细地排列起来。

FontForge允许你提示你的字体（甚至提供了一个<em>Autohint</em>功能），但是实际上这个步骤并不是严格必须的。现代操作系统经常有构建在其文本渲染引擎中的更好的网格适合功能，而不需要话费可观的时间和努力。实际上Mac OS X和Linux都会<em>忽略</em>任何嵌入字体文件中的提示。如果为了Windows用户的利益，你确实选择你的字体确实需要提示，那么你最好的办法是不使用嵌入的提示来构建字体，然后使用专门的程序比如<strong>ttfautohint</strong>来事后增加提示。

CFF提示参见（视频来自RoboThon的Adobe](http://vimeo.com/38364880）

### 检查你的元数据

Last but certainly not least, once your font has been thoroughly prepared technically for export, you should pause and update the font metadata, making sure that important metadata information is included, and that it is up to date.

First, if this is the initial release of your font, open the <em>Font Info</em> dialog from the "Element" window, and select the "PS Names" tab. Fill in the font's Family Name and Weight first, then copy that information into the "Name for Humans" box. Although using version numbers is not required, it is extremely helpful for you as a designer to differentiate between different revisions of your work. Enter "1.0" as the "Version" number if you are not sure. Next, visit the "TTF Names" tab and enter the same information.

<img src="images/fontinfo.png" alt="">

As is the case with version numbers, it is helpful in the long run for you to make log entries for each revision. Go to the "FONTLOG" tab and write a brief sentence or two explaining what changes if any have gone into the revision that you are building for release. If this is your initial log entry, you should also describe your font and its purpose in a sentence or two.

Fonts, like all creative works, need to have a license, so users will know what they are and are not allowed to do. FontForge has a button in the "TTF Nmes" tab labeled "Add SIL Open Font License." The Open Font License (OFL) is a font license designed to allow you to share your font with the public with very few restrictions on how where it is used, while still protecting you as the designer from having others take credit for your work or creative derivatives of your font that wil be confused for the original. Clicking the button will add "License" and "License URL" strings to the TTF Names metadata. If you have another license you would prefer to use instead of the OFL, enter it in the "License" field instead.

<img src="images/metadata.png" alt="">

If you have made significant changes to other features of your font, it is a good idea to double-check the other font-wide settings in the Font Info window, and make sure everything is still up to date. Line spacing information, for example, is found in the "OS/2" tab under "Metrics."

### Building the font files

The process for generating the font output files is the same when you are building the final release as it is when you are building a quick-and-dirty copy for testing, but you will want to pay closer attention to some of the options.

Open the <em>Generate Fonts</em> window by choosing it from the "File" menu. Again, the top half of the window allows you to choose the directory and file name to give to your output file -- just be careful that you do not overwrite a previous save.

In the left-hand side pull-down menu, select the format of the font you are generating, either <em>TrueType</em> or <em>OpenType (CFF)</em>, as discussed earlier. On the right-hand side, make sure <em>No Bitmap Fonts</em> is selected. On the line below, make sure <em>No Rename</em> is selected for the "Force glyph names to:" option. You can check the "Validate Before Saving" option if you wish (to potentially catch additional errors), but this is optional. Leave the "Append a FONTLOG entry," "Prepend timestamp," and "Upload to the Open Font Library" options unchecked.

Next, click on the "Options" button. Select the <em>PS Glyph Names</em>, <em>OpenType</em>, and <em>Dummy DSIG</em> options in the window that pops up, and deselect everything else.

<img src="images/opentype-options-window.png" alt="">

Click the "Generate" button, and FontForge will build your font file. One final ord: it is important not to overwrite the saved version of your FontForge work with the modifications you made in this section solely to generate your <em>.ttf</em> or <em>.otf</em> output.  For example, you lose a lot of individual glyph components when you perform the <em>Remove overlaps</em> operation.  But the next time you resume work on your font, you will definitely want to pick up where you left off in the original, individual-glyph-component-filled version.

Consequently, if you decide to save the modified version of your FontForge file, be sure that you rename it in a memorable way, such as <em>MyFont-TTF.sfd</em> or <em>MyFont-OTF.sfd</em>. But you do not necessarily need to save these output-oriented variations of your file at all -- in practice, the next time you revise your original work in FontForge, you will work through the output preparation steps again anyway.

Congratulations are in order! You have now created your first font. All that remains now is for you to share your work: upload it to the web, post it to your blog, and go tell your friends.

Without doubt, you will be back and continue revising and refining your typeface -- after all, as you have seen, font design is an highly iterative process. But be sure that you pause and take this moment to enjoy what you have accomplished first.
