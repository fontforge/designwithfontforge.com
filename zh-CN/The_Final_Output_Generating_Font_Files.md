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

### 构建字体文件爱你

打开“File”菜单下的<em>Generate Fonts</em>窗口。窗口的上半部分展示了熟悉的文件选择视图&ndash;当前目录的文件列表，一个文本框可以让你输入文件名，和导航到其他文件夹或者目录的按钮。这确实是帮你快速找到保存你的输出文件位置或者在你希望覆盖之前保存的字体文件时选择已有字体的方法。所有你需要看的选项在窗口下半部分。

<img src="images/generate.png" alt="">

在左边是一个下拉菜单，你可以选择你希望输出的字体格式。如上所述你应该选择<em>TrueType</em>或<em>OpenType (CFF)</em>。右边确保选中<em>No Bitmap Fonts</em>。在下面一行，确保“Force glyph names to:”的选项<em>No Rename</em>选中。你如果你希望，你可以检查“Validate Before Saving”选项，但是这是可选的。保留“Append a FONTLOG entry”、“Prepend timestamp”和“Upload to the Open Font Library”不勾选。

点击“Generate”按钮，FontForge将会构建你的字体文件。你可以用其他应用程序夹在字体，并运行任何测试，但是当你返回编辑时，记得在生成你的<em>.ttf</em>或<em>.otf</em>输出时，重新打开你保存的版本。

## Generating for final release

Designing your font is an iterative process, but eventually the day when come when you must declare your font finished -- or at least ready for public consumption. At that point, you will again generate a .ttf or .otf output file (perhaps even both), but before doing so you will need to work through a few additional steps to create the most standards-compliant and user-friendly version of your font file.

First, follow the same preparation steps outlined in the section on quick and dirty generation for testing purposes. In particular, remember to change your font to <em>All layers quadratic</em> if you are creating a TrueType file.

### Remove overlaps

As you know, it is a good idea to keep your letter-forms as combinations of discrete components as you design: stems, bowls, serifs, and other pieces of each glyph. But although this technique is great for designing and refining forms,you want your final, published font to have simple outlines of each glyph instead. This reduces file size a bit, but more importantly it cuts down on rendering errors.

FontForge has a <em>Remove Overlap</em> command that will automatically combine the separate components of a glyph into a single outline. Select a glyph (or even select all glyphs with Control-A), then hit Control-Shift-O or choose Remove Overlap from the "Element" -&gt; "Overlap" menu. One caveat is worth watching out for, however: FontForge cannot merge shapes if one of the shapes is traced in the wrong direction (that is, if the outermost path is counterclockwise). A path traced in the wrong direction is an error of its own, though, which you should fix anyway.

### Simplify contours and add extrema points

You should also simplify your glyphs where possible -- not eliminating details, but eliminating redundant points. This reduces files size slightly for every glyph, which adds up considerably over the entire set of characters in the font.

From the "Element" menu, choose "Simplify" -&gt; <em>Simplify</em> (or hit Control-Shift-M). This command will merge away redundant on-curve points in all of the selected glyphs. In some cases, there will be only a few points removed, in others there may be many. But it should perform the simplification without noticeably changing the shape of any glyphs. If you notice a particular glyph that <em>is</em> altered too much by <em>Simplify</em>, feel free to undo the operation. You can also experiment with the <em>Simplify More</em> command also located in the same menu; it offers tweakable parameters that could prove helpful.

In any event, after you have completed the simplification step, you will need to add any missing extrema points. Choose <em>Add Extrema</em> from the "Element" menu (or hit Control-Shift-X). As discussed earlier, it is a good idea to place on-curve points at the extrema of every glyph as you edit. Nevertheless, you must still perform this step when preparing for final output generation because the <em>Simplify</em> step will occasionally remove an extrema point.

### Round everything to integer coordinates

The final preparation step to perform is to round all points (both on-curve points and control points) to integer coordinates. This is mandatory for generating TrueType output, but is highly recommended for OpenType output as well. It can result in sharper rendering and better grid-fitting when the fonts are displayed, without any additional design work.

To round all points to integer coordinates, choose "Element" -&gt; "Round" -&gt; <em>To Int</em>.

As soon as this operation is completed, you may notice something puzzling. Sometimes, simply due to the peculiarities of the curves involved, the processes of rounding to integer coordinates, simplifying glyphs, and adding missing extrema can work against each other. An example of when this might occur is when a curved outer edge has a control point that lies just past the horizontal or vertical; in this situation rounding it to integer coordinates can shift the curve slightly and change where the extrema lies.

There is not a one-shot solution to this conundrum; the only guaranteed fix is to repeat the cycle of steps for the affected glyphs until they stabilize at a point where the three operations no longer interfere with each other. This may take multiple cycles, but it is a rare occurrence.

### Validate

Your font should pass the required validation tests before you generate your final output. As with the rounding-points-to-integer-coordinates step, though, sometimes the other preparatory operations can introduce errors, so it is always a good idea to run the whole-font validator at this stage before building the final output. The chapter on FontForge's validation tools will give you more detail on what to check.

### A word about hinting

Hinting refers to the use of mathematical instructions to render the vector curves in a font in such a way that they line up nicely with the pixel grid of the rasterized output device (whether that grid is composed of dots of ink or toner on paper, or luminescent dots on a computer monitor).

FontForge allows you to hint your font (and even provides an <em>Autohint</em> function), but in practice this step is not strictly necessary. Modern operating systems often have better grid-fitting functionality built into their text rendering engines than you can create yourself without expending considerable time and effort. In fact, Mac OS X and Linux both <em>ignore</em> any hints embedded in the font file itself. If you do decide your font needs hinting for the benefit of Windows users, your best bet is to build the font without embedded hints, then use a specialized application such as <strong>ttfautohint</strong> to add hinting after the fact.

For CFF hinting, see (this video from Adobe at RoboThon](http://vimeo.com/38364880)

### Check your metadata

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
