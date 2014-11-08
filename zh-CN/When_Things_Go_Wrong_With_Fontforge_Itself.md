---
published: true
layout: bookpage
weight: 91
category: Appendices
title: 当FontForge自己出错时
---

当你使用FontForge的时候发现它崩溃了，那么你可能想要发送信息到[FontForge
developer mailing list](https://lists.sourceforge.net/lists/listinfo/fontforge-devel)。使用这种方式，一个软件开发者可能能够找到代码哪里出错并修复。然后你可以给你本地的FontForge打补丁或者只是像安装一章描述的那样从Github获取源来的到一个不包含你报告的缺陷的升级后的FontForge。

为了帮助开发者找到什么出错了，它们可能想要你的会话的回溯。回溯包括一个程序函数调用其他函数到达程序停止工作位置的函数调用的列表。如果回溯包含了函数的行号，那么它将是最有用的。因为回溯将会制作到源文件和行号的引用，因此不要忘记也告诉开发者你在使用的FontForge版本。可选择地，你可能也希望提到你在做什么的时候导致了崩溃。

## 使用GNU Debugger来报告崩溃

一个回溯是使用GNU Project Debugger (gdb)来生成的。你可以附加gdb到一个已经运行的FontForge上或者在gdb会话中启动FontForge，如下：

```
$ gdb fontforge
GNU gdb (GDB) Fedora (7.3.50.20110722-16.fc16)
Copyright (C) 2011 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-redhat-linux-gnu".
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>...
Reading symbols from /usr/local/bin/fontforge...done.
```

然后一旦你给调试器发出了运行命令，FontForge将会在屏幕上打开。

```
(gdb) run
Starting program: /usr/local/bin/fontforge 
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib64/libthread_db.so.1".
Copyright (c) 2000-2012 by George Williams.
 Executable based on sources from 14:57 GMT 31-Jul-2012-ML-TtfDb-D.
 Library based on sources from 14:57 GMT 31-Jul-2012.
```

到这里你可以用通常的方法使用FontForge，但是FontForge拥有了有效捕获并报告问题的好处。

从gdb内运行FontForge造成的一个主要不同之处在于如何让你一个崩溃变得明显。没有gdb时，当FontForge崩溃时它将从你的屏幕消失。但是当你在gdb中运行FontForge时，崩溃的FontForge及其窗口和用户界面将保持打开。

如果你发现你的界面不响应，切换回你启动gdb的终端，你可能在（gdb）提示后面的文本中看到一些东西比如“SIGSEGV”。如果你看到（gdb）提示那么FontForge不再运行。在此时使用“bt”命令来的到回溯，如下面的例子所示。

如你在示例回溯中看到的，FontForge在`copy()`函数内崩溃。`copy()`函数被`KCD_AutoKernAClass`函数调用。回溯将会告诉一个软件开发者这些调用的确切行，同时也提示传给`copy()`的参数无效（超出边界），从而去解决程序出错的地方。

```
Program received signal SIGSEGV, Segmentation fault. 
0x00007ffff74a7c01 in ?? () from /lib/x86_64-linux-gnu/libc.so.

 (gdb) bt
#0  0x00007ffff74a7c01 in ?? () from /lib/x86_64-linux-gnu/libc.so.6
#1  0x00007ffff6389a80 in copy (str=0x900000008) at memory.c:82
#2  0x00007ffff7a4aeb5 in KCD_AutoKernAClass (kcd=kcd@entry=0xe80c40, index=2, is_first=is_first@entry=1)
    at kernclass.c:236
#3  0x00007ffff7a51405 in KCD_FinishEdit (g=0xeb0fe0, r=1, c=, wasnew=1) at kernclass.c:2020
#4  0x00007ffff5effe2d in GME_SetValue (gme=gme@entry=0xeb0fe0, g=0xe94760) at gmatrixedit.c:988
#5  0x00007ffff5f00554 in GME_FinishEdit (gme=0xeb0fe0) at gmatrixedit.c:997
#6  0x00007ffff5f01c1a in GMatrixEditGet (g=g@entry=0xeb0fe0, rows=rows@entry=0x7fffffffcf78)
    at gmatrixedit.c:2214
#7  0x00007ffff7a4ea3c in KCD_Expose (event=0x7fffffffd1e0, pixmap=0x83ae00, kcd=0xe80c40)
    at kernclass.c:1446
#8  kcd_e_h (gw=0x83ae00, event=0x7fffffffd1e0) at kernclass.c:1762
#9  0x00007ffff5eabe8f in _GWidget_Container_eh (gw=gw@entry=0xe7f040, event=event@entry=0x7fffffffd1e0)
    at gcontainer.c:269
#10 0x00007ffff5eac385 in _GWidget_TopLevel_eh (event=0x7fffffffd1e0, gw=0xe7f040) at gcontainer.c:734
#11 _GWidget_TopLevel_eh (gw=0xe7f040, event=0x7fffffffd1e0) at gcontainer.c:606
#12 0x00007ffff5ef86ce in GXDrawRequestExpose (gw=0xe7f040, rect=0xef72b0, doclear=)
    at gxdraw.c:2687
#13 0x00007ffff5eea075 in gtextfield_focus (g=0xef72a0, event=0x7fffffffd2e0) at gtextfield.c:1888
#14 0x00007ffff5eaa857 in _GWidget_IndicateFocusGadget (g=0xe94760, mf=mf@entry=mf_normal)
    at gcontainer.c:143
#15 0x00007ffff5eaac97 in GWidgetIndicateFocusGadget (g=) at gcontainer.c:155
#16 0x00007ffff5f02b1e in GME_StrSmallEdit (event=0x7fffffffd670, str=0xe10e60 "A", gme=0xeb0fe0)
    at gmatrixedit.c:890
#17 GMatrixEdit_StartSubGadgets (gme=gme@entry=0xeb0fe0, r=1, c=c@entry=0, event=event@entry=0x7fffffffd670)
    at gmatrixedit.c:1472
#18 0x00007ffff5f03d69 in GMatrixEdit_MouseEvent (event=0x7fffffffd670, gme=0xeb0fe0) at gmatrixedit.c:1499
#19 matrixeditsub_e_h (gw=, event=0x7fffffffd670) at gmatrixedit.c:1735
#20 0x00007ffff5eabd98 in _GWidget_Container_eh (gw=0xeeb2e0, event=0x7fffffffd670) at gcontainer.c:393
#21 0x00007ffff5ef6555 in dispatchEvent (gdisp=gdisp@entry=0x769a50, event=event@entry=0x7fffffffd9b0)
    at gxdraw.c:3475
#22 0x00007ffff5ef7d1e in GXDrawEventLoop (gd=0x769a50) at gxdraw.c:3574
#23 0x00007ffff7ad353a in fontforge_main (argc=, argv=) at startui.c:1196
#24 0x00007ffff736676d in __libc_start_main () from /lib/x86_64-linux-gnu/libc.so.6
#25 0x00000000004006e1 in _start ()
(gdb) quit
A debugging session is active.

       Inferior 1 [process 19196] will be killed.

Quit anyway? (y or n) y
```
在gdb中使用gdb的quit命令来退出gdb并关闭崩溃的FontForge。如果你可以发送好的回溯给FontForge开发者，那么你可以为每个人提升程序的稳定性！不要对报告这些问题感到害羞，一个没有报告的崩溃是一个不太可能被修复的蹦阔。
