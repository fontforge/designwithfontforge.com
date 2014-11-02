---
published: true
layout: bookpage
weight: 30
category: workflow
title: 确保你的字体有效，验证
---

在一个完美的世界中，你的字体随时可以构建并安装在任何现代计算机上而不需要做任何额外的努力，但是现实是混乱的&ndash;尤其是在设计进程中。字体可能有阻止他们正常工作和显示的技术性错误。例如和自己相交的曲线不会正确渲染，因为他们没有“里面”和“外面”。各种各样的字体文件类型也期望字形附加在某些简化文本放在屏幕上的某些规则，破坏这些规则的字体可能引起意外问题。这种类型问题的一个例子是一条曲线上的所有点的坐标应该是整数。最后，有一些非技术性错误的样式错误，但是你也要修复它们&ndash;比如想要完全水平或竖直的线，但是偶尔轻微离开。

FontForge提供了工具让你可以定位（并且在许多情况下修复）所有的三类问题。验证你的字体来消除这些错误不仅可以确保用户可以安装并享受字体，而且可以确保完成的项目表现得耀眼。

## 发现问题

第一个工具叫做em>Find Problems</em>，可以在Element菜单下找到。你必须首先选择一个或多个字形&ndash;从字体视图或者轮廓视图或者度量值视图&ndash;然后打开Find Problems工具。这个工具在八个分开的选项卡下展示潜在问题的混合。

<img src="images/findproblemswindow.png" alt="">

你选择你感兴趣寻找的问题，方法是勾选它们旁边的复选框，有些还提供了用于检查字体的数字值。当你点击OK按钮时，这个工具将会检查所有选中的字形并在一个对话框内报告它找到的任何问题的报告。

Find Problems工具找到的问题被分成八类：

* 点相关的问题
* 路径和曲线的问题
* 引用的问题
* 提示的问题
* ATT的问题
* CID字体特有的问题
* 边界框问题
* 各种其他问题

并不是每个检查都是必要的；一些只应用在特定的脚本或者语言（比如“CID”选项卡中的那些），另一些只应用在特定可选择的字体特性（比如在引用选项卡中的检查）。但是你应该检查你的字体是否通过字形的必要特性的测试和一些可选但是通常的行为的测试。几个其他测试在设计进程中为你提供给了反馈和指导，因此值得探索。

### 先说重要的：测试必要特性

在“Points”选项卡，选择<em>Non-Integral Coordinates</em>测试。这个测试确保每个字形中的所有点（包括弧线上的点和控制点）都有整数坐标。并不是每个字体输出格式需要这个行为，但是一些需要。

在“Paths”选项卡，选择选项<em>Open paths</em>和<em>Check outermost paths clockwise</em>。他们都是所有字体的强制特性；第一个寻找任何不是闭合形状的曲线，第二个确保每个字形的外部曲线是沿着顺时针顺序。这也是一个检查<em>交叉路径</em>的非常好的主意；尽管现代字体格式可以支持两个交叉路经，但是并不允许与自己交叉的曲线。另外如果一个字形有与自己相交的路径那么FontForge不能执行<em>Check outermost paths clockwise</em>测试。

在“Refs”选项卡，选择所有的6个测试。这些将检查所有相关的引用，引用中一个字形包含另一个字形的路径。例如一个带重音的字母包含了一个到原始（无重音的）字母的引用，加上一个到重音自负的引用。在“Refs”选项卡下的所有测试至少对于一个通常输出格式是强制的，对所有的来说是好主意。

类似地，选择“ATT”选项卡下的所有测试。这些测试寻找缺失的字形名称，引用不存在字形的替代规则，和其他字形名称活OpenType特性相关的问题。它们防止的问题并不常用，但是所有的都将导致字体被一个或多个电脑系统认为是无效的，因此它们值得被包含进来。

### 让你的用户生活更容易：测试好的行为

上面列出的测试将会保证你的字体按照多种字体格式设置的规则集合正确地安装和渲染，但是你应该在考虑添加一些其他测试&ndash;尤其是在设计进程的结束&ndash;仅仅因为它们检查大部分现代印刷格式遵循的公约。

在“Points”选项卡，选择<em>Control points beyond spline</em>。这个测试将寻找处于其所属的曲线段的端点外的控制点。很少有一个控制点应该处于曲线以外的原因，因此这样的情况通常意味着意外。选择<em>Points too far apart</em>也是一个好主意，它将会查找距离最近的点超过32767单位的点。这个距离比大多数计算机能够内部处理的更大，并且一个那么远的点几乎必然不是故意的（可以对比的是，一个字形倾向于会只在一个大约1000单位的网格中），因此删除这样的点是重要的。

在“Paths”选项卡，<em>Check Missing Extrema</em>和<em> More Points Than [val]</em>测试可以是有价值的。第一个寻找处于极值的点&ndash;也就是字形的最高点、最低点和最左点和最右点。现代字体格式强烈建议每个路径都有一个处于其水平和垂直上极值的点；在字体渲染在屏幕或页面上时，这将让生活更美好。检查将会查找缺失的极值点。第二个测试是一个对字形中点的数量的明智的检查。FontForge中这个检查的默认值是1500个点，这是PostScript文档中建议的值，对几乎所有字体都足够好。

正如其名字一样，“Random”选项卡列出不属于其他类别的杂项测试。当然，最后三个是有价值的：<em>Check Multiple Unicode</em>，<em>Check Multiple Names</em>和<em>Check Unicode/Name mismatch</em>。它们寻找字形名称和Unicode码之间映射的元数据错误。

### 帮助你自己: 运行测试可以援助设计

Find Problems工具中的许多其他测试有助于找到并定位你的字形集中的矛盾之处；不是错的或者无效的但是作为设计者的你希望打磨的东西。例如“Points”选项卡中的<em>Y near standard heights</em>测试将字形与一个有用的竖直测量值集合来比较，包括基线、字形“x”的高度、字母“p”的最低点和最高点等。在一个一致的字体样式中，大多数字母将依附到这些标准测量值中的几个，因此一个并不靠近其中任何一个的字形需要大量的工作。

在“Paths”选项卡中的<em>Edges near horizontal/vertical/italic</em>功能寻找几乎是精确地处于水平、竖直或者处于字体倾斜角度的线段。将你几乎竖直的线条做成完美竖直意味着在你的字体使用时图形将会锐利地渲染，这个测试是找到在眼睛没有帮桌的情况下难以察觉到的不十分正确的线段的可靠的手段。

你可以使用其他测试来定位曲线上互相太靠近的点而没有意义，来比较形状类似字形的旁边空白，来执行一些当你有古怪的字符时揭露问题。改善进程的一部分是采用你最初的设计并使他们更加精确；像字体设计的其他方面一样，这是一个迭代的任务，因此使用使用内建的工具以减少一些重复工作。

## 验证字体

FontForge的其他验证工具时全字体验证器，
's other validation tool is the whole-font validator, which runs a battery of tests and checks on the entire font. Because the validator is used to examine a complete font, you can only start it up from the font view window; you will find it in the Element menu, under the Validation submenu. The validator is deigned to run just those tests that examine the font for technical correctness—essentially the tests described in the "test for required features" section above. But it does execute the tests against the entire font, and it does so far more rapidly than you can step through the process yourself using the Find problems tool.

<img src="images/validator-integral-question.png" alt="">

The first time you run the validator during a particular editing session, it will pop up a dialog box asking you whether or not it should flag non-integer point coordinates to be an error. The safe answer is to choose "Report as an error," since sticking with integral coordinates is good design practice.  When the validator completes its scan of the font (which will be mere seconds later), it will open up a new dialog box named Validation of <em>Whatever Your Font Name Is</em>. This window will list every problem the validator found, presented in a list sorted by glyph.

<img src="images/valiator-output.png" alt="">

But this window is not merely a list of errors: you can double-click on each item in the list, and FontForge will jump to the relevant glyph and highlight the exact problem, complete with a text explanation in its own window. You can then fix the problem in the glyph editor, and the associated error item will immediately disappear from the validator's error list. In many cases, the error will be something FontForge can automatically repair; in those cases the explanation window will have a "Fix" button at the bottom. You can click it and perform the repair without additional effort.

<img src="images/validator-fix-problem.png" alt="">

For some problems, there is no automatic fix, but seeing the issue on-screen will help you fix it immediately. For example, a self-intersecting curve has a specific place where the path crosses over itself—it may have been too small for you to notice at a glance, but zooming in will allow you to reshape the path and eliminate the problem.

For other problems, there may not be one specific point at which the error is located. For example, if a curve is traced in the wrong direction (that is, counterclockwise when it should be clockwise), the entire curve is affected. In those instances where FontForge cannot automatically fix the problem and there is no specific point on the glyph for the validator to highlight, you may have to hunt around in order to manually correct the problem.

Finally, there are some tests performed by the validator that might not be a problem from the final output format you have in mind—for example, the non-integral coordinates test mentioned earlier.  In those cases, you can click on the "ignore this problem in the future" checkbox in the error explanation window, and suppress that particular error message in future validation runs.

## Fix problems as you edit

Most of the errors that the Find problem tool and the whole font validator look for can be corrected during the editing process, so do not feel any need to defer troubleshooting while you work. For example, View &gt; Show submenu has options that highlight problem areas during editing; the Element menu hold commands like <em>Add Extrema</em> that will add the extrema points expected in most output file formats, and checkboxes to indicate whether the selected path is oriented in the clockwise or counterclockwise direction. If you flip a shape (horizontally or vertically) in the glyph editor, you will notice that its direction is automatically reversed as well. If you click on the <em>Correct Direction</em> command in the Element menu, FontForge will fix the clockwise/counterclockwise orientation immediately. Getting in the habit of doing small fixes like this as you work will save you a bit of time during the validation stage later.

# Does the Design Work?  

Typefaces can 'work' better or worse in two ways; readability and legibility. 


Legibility means the designs of glyphs are distinct enough to be instantly recognised correctly. Here are some pairs that are often too similar:

* the letter "L" and the number "1"
* the letter "O" and the number "0" 
* the letter "Z" and the number "2" 
* the numbers "1" and "7”

Readability means all the glyphs work well together for a familiar, comfortable reading experience. Creating test documents is the best way to ensure this. If you have a complete alphabet then you can typeset real text - for example using [FontFriend](http://somadesign.ca/projects/fontfriend/) to drag and drop your font into a long news article you wish to read, then printing it out.

However, if you font only contains a fraction of the alphabet, you can use a test text generator such as [LibreText.org](http://libretext.org) and any word processor, desktop publication application or general illustration program (such as [Inkscape](http://www.inkscape.org)) to create test documents.
