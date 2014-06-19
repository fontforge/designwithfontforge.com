---
published: true
layout: bookpage
weight: 10
category: Getting To Know FontForge
title: Installing FontForge
---

[FontForge] is a free and open-source software, which noticeably means that you can download and
install it without restrictions.  
It also means that this is a community-maintained application (anyone can contribute to the source
code).

FontForge is available for Windows, Mac OS and GNU+Linux (“Linux”) operating systems.

<p class="note"><b>Note:</b> If you run into a problem using FontForge, or if FontForge is missing a
feature, you can open up an issue on the <a href="https://github.com/fontforge/fontforge">software’s
repository</a>, which developers will have a look at &mdash; even if you’re just getting started.</p>

Installing from Supplied Binaries
---------------------------------

Clicking on the Download button on the main menu of the [FontForge website][FontForge] will take you
to the SourceForce repository. Under the `fontforge-executables` directory you will find Windows,
OSX, and Linux binaries. For Linux you will see rpm files which can be installed.

Installing on Windows
---------------------

Jeremy Tan provides [recent builds](http://sourceforge.net/projects/fontforgebuilds/) of
FontForge for Windows.  
Otherwise, the stable release installer from 2012 can be found on the [old SourceForge repository]
(http://sourceforge.net/projects/fontforge/files/fontforge-executables/).

Installing on Mac OS X
----------------------

An [installation guide](http://fontforge.github.io/en-US/downloads/mac/) is available on the new
website, which is itself still under development.

Installing on GNU+Linux
-------------------------

The focus of this section is on installation of FontForge on a Linux machine. As many of the
developers of FontForge use Linux on a daily basis, building from source can be simplest on that
platform. The easiest method to get FontForge on your Linux machine is to use your Linux
distribution’s package repository. A slightly more difficult method of installation is to download
and install the binaries offered from the FontForge website. You might like to use the binaries
offered on the FontForge website if they are more recent than those your Linux distribution offers.

To round out the installation methods, we’ll see how to grab the very latest source code from GitHub
in order to compile and install it on your machine. You might like to compile from source if
there are some recent updates that are not included in the latest release. This section also
includes some additional information on how to report crashes to the FontForge developers so that
any active bug can be tracked down and fixed.

## Debian or Ubuntu

```
sudo apt-get install fontforge python-fontforge
```

## Fedora

To install FontForge on your Fedora Linux desktop machine run the following yum command as the root
user. This will require about 10MiB of download to complete.

```
# yum install fontforge
```

After issuing the yum install you should be able to run FontForge from your menu or directly from
the konsole or gnome-terminal by issuing the *fontforge* command.

Use the command below if you also want to install the debugging information for FontForge from the
Fedora repository. Note that this might require hundreds of megabytes of download if you do not
already have many of the dependent debuginfo packages installed.

```
# debuginfo-install fontforge
```

If you have not compiled software on your Fedora machine, after installing gcc, automake, autoconf
and others then you might get an error during the execution of autogen.sh with libtoolize. If that
is the case you might need to install the libtool-ltdl-devel package on Fedora or a similar
development package on another Linux distribution.

## From GitHub

GitHub is a source-code hosting service where everyone can contribute on a software’s development.

Part of this book discusses the use of Spiro curves in font design. If you do not wish to use that
functionality you can skip the installation of `libspiro` and carry on with the subsequent steps to
install FontForge itself from GitHub.

Get `libspiro` from [its homepage](http://libspiro.sourceforge.net) &ndash; installation follows the
standard procedure for an autotools buildable project, as shown below:

```
$ tar xf libspiro_src-20071029.tar.bz2 
$ cd ./libspiro-20071029/
$ ./configure 
$ make
$ sudo make install
```

You should now have `libspiro` installed onto your machine. On to installing FontForge from source,
which is about 50Mb in size.

```
$ git clone https://github.com/fontforge/fontforge.git
$ cd ./fontforge
$ ./autogen.sh 
Preparing the fontforge build system...please wait

Found GNU Autoconf version 2.68
Found GNU Automake version 1.11.6
Found GNU Libtool version 2.4

Automatically preparing build ... done

The fontforge build system is now prepared.  To build here, run:
  ./configure
  make

$ make
$ sudo make install
$ sudo ldconfig
```

You might be tempted to use the `--with-freetype-source` configure option. This option should only
be needed if you are debugging TrueType font hints by stepping through them or other advanced
functionality.

## Debugging the FontForge software

If at some stage you find reproducible stability issues with fontforge you might like to install the
debug information so that you can provide a backtrace to the FontForge team so that the issue may be
rectified.  
If you have installed FontForge from your Linux distribution’s package repository, the method to
install debugging information is different than the method to install debug information when building
from source. In either case, you can use the *nm* command to check if debugging information is
already available for your FontForge installation. Use the “type” command to find the
location of your `fontforge binary` and if you see “no symbols” as shown below then you will need to
update your installation to include debug information in order to provide good feedback to the
FontForge developers.

```
$ type -all fontforge
fontforge is /usr/bin/fontforge
$ nm /usr/bin/fontforge
nm: /usr/bin/fontforge: no symbols
```

See the [Debugging] section for more information.

[FontForge]: http://fontforge.github.io/
[Debugging]: When_Things_Go_Wrong_With_Fontforge_Itself.html
