---
published: true
layout: bookpage
weight: 69
category: Appendices
title: When Things Go Wrong With FontForge Itself
---

FontForge is developed on Github. 
The FontForge team uses Github Issues to discuss problems, errors and ideas for improvements, and then someone develops a solution and proposes it as a _Pull Request_.

To learn more about Github, check out [Good Resources for Learning Git and GitHub](https://help.github.com/articles/good-resources-for-learning-git-and-github/).

## Paying for Support

This might be a surprise, but it is both possible and encouraged to pay for FontForge support when things go wrong. 

When other font editors with similar comprehensive features cost hundreds of US dollars, if we each pay a similar amount to FontForge developers to get our most annoying bugs fixed, FontForge will become better and better. 

[FreedomSponsors](https://freedomsponsors.org/project/220/) offers a transparent system for paying FontForge developers to fix issues you care about in a timely fashion. 

1. Create a FontForge issue describing what you want to be changed (see below). Copy the URL of the issue to the clipboard.
2. Visit FreedomSponsors and sponsor a new issue, using the URL you copied earlier.
3. Revisit the issue and add a comment with the link to the FreedomSponsors issue page, with a personal note that you're offering a paid bounty for this issue to be closed.

## Report a Bug

1. Visit the [FontForge GitHub Issue Tracker](https://github.com/fontforge/fontforge/issues) and sign in to GitHub (after creating an account, if you don't have one yet).
2. In the Issues search box, try searching for similar issues, to see if the problem you are facing was reported already. 
If it was, and your issue is related but not quite the same, please comment on that issue with your own take on the issue.
3. If it was not already reported, open up a new issue. 
Click the green "New Issue" button, and then describe your question, what you did to trigger a crash, or your idea for an improvement.

Include relevant details, such as:

* your Operating System and version, 
* your FontForge version and where you got it from, 
* **what happens, step by step, to produce the issue** 
* **what error messages you see,** and
* **what you expect to happen**.

You can drag and drop screenshots or other images directly into the issue page to include them.

An easy way to report issues is to record a screencast video in which you explain in a narrated voiceover the things you are interested in as they happen, and then upload it to YouTube and include a link to your video.

To reproduce the issue, it can helpful to share with the developer community the files you are working with. 
If you can make a file that is small and only contains what is needed to reproduce the issue, please fork the fontforge repo and add these files to [/tests/fonts](https://github.com/fontforge/fontforge/tree/master/tests/fonts) and submit a pull request. 
You can also place files on your own website or a file sharing service temporarily (such as MegaUpload, DropBox, Google Drive, etc.) 
Finally, if you do not wish to make your files publicly available, you can provide an email address for a FontForge developer to contact you at to get a private copy of the file.

Please don't close other people's issues &mdash; ask them to close the issue if it is closed to their satisfaction.

## How To Report A Crash

The process is just the same for reporting a crash or other kinds of bugs as it is for new features or questions.
Sending a good crash report to the FontForge developers really does help them a lot to improve the stability of the program for everybody! 
Don’t feel shy about reporting such issues, because a crash that isn’t reported is a crash that is far less likely to be fixed.

If you find FontForge crashing whilst in use, create an issue as above.
If you have a particular font file (SFD, UFO, OTF, TTF, etc) that triggers the crash, you can either upload it to a new GitHub repository yourself (or Dropbox or another platform) and include a link, or post your email and ask a developer to email you to get a copy privately.

With your description the FontForge software developers will try to reproduce the crash. 
If they can do this, then they will be able to work out where the code is going wrong, and create a fix. 

After the Pull Request that addresses the issue is merged, you'll need to get a version after that. 
You can do one of the following:

* recompile from the latest Github source code (see [Installing Fontforge](Installing_Fontforge.html)), 
* check if a daily build is available (often possible for [Mac OS X](http://fontforge.github.io/en-US/downloads/mac/)), or 
* wait until the next release (often within a few weeks).

### The Best Crash Reports

To help developers find out what is going wrong and __really__ understand how to fix it, you can do a bit more work to make a _backtrace_.
A backtrace includes a list of which program functions have called which other ones to get to where the program has stopped working. 
A backtrace is most useful if it also contains the line numbers of the functions. 

To make a backtrace, you may need to install from source with _debugging information_ included.
Use the `type` and `nm` commands to find the path and status of your fontforge binary. 
Example:

```sh
$ type -all fontforge;
fontforge is /usr/bin/fontforge
$ nm /usr/bin/fontforge;
nm: /usr/bin/fontforge: no symbols
```

In this example we see `no symbols`, so we must update our installation to include debug information.

#### Install Debugging Information on Fedora

Fedora offers in the standard repository a command to easily install debugging information for FontForge. 
(Note that this might require hundreds of megabytes of download if you do not already have many of the dependent debuginfo packages installed.)
To install it, run:

```sh
debuginfo-install fontforge;
```

<!--TODO: Explain how to include debug information from compiled sources-->

A backtrace is generated using the GNU Project Debugger, `gdb`. 
You can either attach gdb to an already running FontForge, or start FontForge inside the gdb session itself. 
Here's an example of the latter:

```
$ gdb fontforge;
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

Then once you issue the debugger using the run command, FontForge will open on the screen:

```
(gdb) run
Starting program: /usr/local/bin/fontforge 
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib64/libthread_db.so.1".
Copyright (c) 2000-2012 by George Williams.
 Executable based on sources from 14:57 GMT 31-Jul-2012-ML-TtfDb-D.
 Library based on sources from 14:57 GMT 31-Jul-2012.
```

From here you can use FontForge in the usual way, but with the advantage of being able to effectively capture and report any issues that FontForge may have.

One major difference that running FontForge inside gdb makes is how a crash is made apparent.
Without gdb, when FontForge crashes, it will disappear from your screen. When you are running FontForge inside gdb, however, a crashed FontForge will remain open along with its windows and user interface.

If you find that your interface is unresponsive, switch back to the terminal where you ran gdb and you might see something like `SIGSEGV` in the text followed by the `(gdb)` prompt. 
If you see the `(gdb)` prompt then FontForge is no longer executing. 

You can now (finally!) use the `bt` command to get a backtrace, and then use the gdb `quit` command to exit from gdb and to close the crashed FontForge. 
Here is an example:

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

A developer can see in this example backtrace that FontForge has crashed inside the `copy()` function. 
The `copy()` function was itself called from the `KCD_AutoKernAClass` function. 
The backtrace will tell a software developer the exact lines these calls were made, and also use the tip that the parameter passed to `copy()` was invalid (out of bounds) to work out what the code is doing wrong.
