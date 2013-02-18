---
layout: bookpage
weight: 91
category: Appendices
title: When things go wrong with FontForge itself
---

If you find FontForge crashing whilst in use you might like to send information to the fontforge developer mailing list at https://lists.sourceforge.net/lists/listinfo/fontforge-devel. This way, a software developer might be able to work out where the code is going wrong and apply a fix. You can then either patch your local FontForge, or just grab the sources from github as detailed in the Installing chapter to get an updated FontForge free of the defect you reported.

To help developers find out what is going wrong, they will want a backtrace from your session. The backtrace includes a list of which program functions have called which other ones to get to where the program has stopped working. The backtrace is most useful if it also contains the line numbers of the functions. Because the backtrace will make reference to source files and line numbers, don't forget to also tell the developers which version of FontForge you are using. Optionally, you might also like to mention what you were doing leading up to the crash.

## Using the GNU Debugger to report crashes

A backtrace is generated using the GNU Project Debugger (gdb). You can either attach gdb to an already running FontForge, or start fontforge inside the gdb session itself as shown below.

<pre><strong>$ gdb fontforge</strong><br>GNU gdb (GDB) Fedora (7.3.50.20110722-16.fc16)<br>Copyright (C) 2011 Free Software Foundation, Inc.<br>License GPLv3+: GNU GPL version 3 or later &lt;http://gnu.org/licenses/gpl.html&gt;<br>This is free software: you are free to change and redistribute it.<br>There is NO WARRANTY, to the extent permitted by law.  Type "show copying"<br>and "show warranty" for details.<br>This GDB was configured as "x86_64-redhat-linux-gnu".<br>For bug reporting instructions, please see:<br>&lt;http://www.gnu.org/software/gdb/bugs/&gt;...<br>Reading symbols from /usr/local/bin/fontforge...done.</pre>
<pre> </pre>
<pre>Then once you issue the debugger the run command, FontForge will open on screen;</pre>
<pre><br><strong>(gdb) run</strong><br>Starting program: /usr/local/bin/fontforge <br>[Thread debugging using libthread_db enabled]<br>Using host libthread_db library "/lib64/libthread_db.so.1".<br>Copyright (c) 2000-2012 by George Williams.<br> Executable based on sources from 14:57 GMT 31-Jul-2012-ML-TtfDb-D.<br> Library based on sources from 14:57 GMT 31-Jul-2012.</pre>

From here you can use FontForge in the usual way, but with the advantage of being able to effectively capture and report any issues that FontForge may have.

One major difference that running FontForge inside gdb makes is how a crash is made apparent. Without gdb, when FontForge crashes it will disappear from your screen. When you are running FontForge inside gdb however, a crashed FontForge will remain open along with its windows and user interface.

If you find that your interface is unresponsive, switch back to the terminal where you ran gdb and you might see something like "SIGSEGV" in the text followed by the (gdb) prompt. If you see the (gdb) prompt then FontForge is no longer executing. At this stage, use the "bt" command to get a backtrace as shown in the example below.

As you can see in the example backtrace FontForge has crashed inside the copy() function. The copy() function was itself called from the KCD_AutoKernAClass function. The backtrace will tell a software developer the exact lines these calls were made, and also use the tip that the parameter passed to copy() was invalid (out of bounds) to work out what the code is doing wrong.

<pre>Program received signal SIGSEGV, Segmentation fault. <br>0x00007ffff74a7c01 in ?? () from /lib/x86_64-linux-gnu/libc.so.</pre>
<pre><strong> (gdb) bt</strong><br> #0  0x00007ffff74a7c01 in ?? () from /lib/x86_64-linux-gnu/libc.so.6<br>#1  0x00007ffff6389a80 in copy (str=0x900000008</pre>
<address>) at memory.c:82<br> #2  0x00007ffff7a4aeb5 in KCD_AutoKernAClass (kcd=kcd@entry=0xe80c40, index=2, is_first=is_first@entry=1)<br>     at kernclass.c:236<br> #3  0x00007ffff7a51405 in KCD_FinishEdit (g=0xeb0fe0, r=1, c=, wasnew=1) at kernclass.c:2020<br> #4  0x00007ffff5effe2d in GME_SetValue (gme=gme@entry=0xeb0fe0, g=0xe94760) at gmatrixedit.c:988<br> #5  0x00007ffff5f00554 in GME_FinishEdit (gme=0xeb0fe0) at gmatrixedit.c:997<br> #6  0x00007ffff5f01c1a in GMatrixEditGet (g=g@entry=0xeb0fe0, rows=rows@entry=0x7fffffffcf78)<br>     at gmatrixedit.c:2214<br> #7  0x00007ffff7a4ea3c in KCD_Expose (event=0x7fffffffd1e0, pixmap=0x83ae00, kcd=0xe80c40)<br>     at kernclass.c:1446<br> #8  kcd_e_h (gw=0x83ae00, event=0x7fffffffd1e0) at kernclass.c:1762<br> #9  0x00007ffff5eabe8f in _GWidget_Container_eh (gw=gw@entry=0xe7f040, event=event@entry=0x7fffffffd1e0)<br>     at gcontainer.c:269<br> #10 0x00007ffff5eac385 in _GWidget_TopLevel_eh (event=0x7fffffffd1e0, gw=0xe7f040) at gcontainer.c:734<br> #11 _GWidget_TopLevel_eh (gw=0xe7f040, event=0x7fffffffd1e0) at gcontainer.c:606<br> #12 0x00007ffff5ef86ce in GXDrawRequestExpose (gw=0xe7f040, rect=0xef72b0, doclear=)<br>     at gxdraw.c:2687<br> #13 0x00007ffff5eea075 in gtextfield_focus (g=0xef72a0, event=0x7fffffffd2e0) at gtextfield.c:1888<br> #14 0x00007ffff5eaa857 in _GWidget_IndicateFocusGadget (g=0xe94760, mf=mf@entry=mf_normal)<br>     at gcontainer.c:143<br> #15 0x00007ffff5eaac97 in GWidgetIndicateFocusGadget (g=) at gcontainer.c:155<br> #16 0x00007ffff5f02b1e in GME_StrSmallEdit (event=0x7fffffffd670, str=0xe10e60 "A", gme=0xeb0fe0)<br>     at gmatrixedit.c:890<br> #17 GMatrixEdit_StartSubGadgets (gme=gme@entry=0xeb0fe0, r=1, c=c@entry=0, event=event@entry=0x7fffffffd670)<br>     at gmatrixedit.c:1472<br> #18 0x00007ffff5f03d69 in GMatrixEdit_MouseEvent (event=0x7fffffffd670, gme=0xeb0fe0) at gmatrixedit.c:1499<br> #19 matrixeditsub_e_h (gw=, event=0x7fffffffd670) at gmatrixedit.c:1735<br> #20 0x00007ffff5eabd98 in _GWidget_Container_eh (gw=0xeeb2e0, event=0x7fffffffd670) at gcontainer.c:393<br> #21 0x00007ffff5ef6555 in dispatchEvent (gdisp=gdisp@entry=0x769a50, event=event@entry=0x7fffffffd9b0)<br>     at gxdraw.c:3475<br> #22 0x00007ffff5ef7d1e in GXDrawEventLoop (gd=0x769a50) at gxdraw.c:3574<br> #23 0x00007ffff7ad353a in fontforge_main (argc=, argv=) at startui.c:1196<br> #24 0x00007ffff736676d in __libc_start_main () from /lib/x86_64-linux-gnu/libc.so.6<br> #25 0x00000000004006e1 in _start ()<br><strong> (gdb) quit</strong><br>A debugging session is active.

        Inferior 1 [process 19196] will be killed.

<strong>Quit anyway? (y or n) y</strong>

</address>
<div>Use the quit gdb command to exit from gdb and to close the crashed FontForge. If you can send a good backtrace to the fontforge developers then you can help to improve the stability of the program for everybody! Don't feel shy about reporting these issues, a crash that doesn't get reported is a crash that is far less likely to be fixed.</div>