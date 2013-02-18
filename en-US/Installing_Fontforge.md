---
published: true
layout: bookpage
weight: 10
category: Getting To Know FontForge
title: Installing FontForge
---

FontForge is free and open source software. For you as the user, this means two important things.  First, it means that you can download and install FontForge wherever you like, as many times as you like, and use it with no restrictions.

Second, and ultimately more importantly, it means that the application is written and maintained by a community of people whose only responsibility is to the project itself.  If you run into a problem using FontForge, including those occasions when FontForge is missing a feature you would like, you can bring your problem directly to the programmers that maintain the application.  Feel free to ask questions, request new features, or ask why things work the way they do.  As a FontForge user, you are just as much a part of the community as everyone else, and your participation will only make FontForge better for everyone -- even if you are just getting started.

FontForge can be installed on Gnu/Linux (Linux), OSX, and Microsoft Windows computers. Installer packages are provided for OSX, Windows, and binaries for Linux. At the time of writing the Windows and OSX binaries are somewhat dated. Hopefully a new release of FontForge in early 2013 will bring updates to the binary packages offered for all platforms.

The focus of this section is on installation of FontForge on a Linux machine. As many of the developers of FontForge use Linux on a daily basis, building from source can be simplest on that platform. The easiest method to get FontForge on your Linux machine is to use your Linux distribution's package repository. A slightly more difficult method of installation is to download and install the binaries offered from the FontForge website. You might like to use the binaries offered on the FontForge website if they are more recent than those your Linux distribution offers.

To round out the installation methods, we'll see how to grab the very latest source code from github and compile and install it on your machine. You might like to compile from the github sources if there are some features or stability updates that you know are available or perhaps there are fixes to problems that you have reported which are not available in any release yet. This section also includes some additional information on how to report crashes to the FontForge mailing list so that you may help the software continue to improve for all of it's users.

If at some stage you find reproducible stability issues with fontforge you might like to install the debug information so that you can provide a backtrace to the FontForge team so that the issue may be rectified. If you have installed FontForge from your Linux distribution's package repository the method to install debugging information is different than the method to install debug information when building from source. In either case, you can use the <em>nm</em> command to check if debugging information is already available for your FontForge installation. Use the "type" command to find the location of your fontforge binary and if you see "no symbols" as shown below then you will need to update your installation to include debug information in order to provide good feedback to the FontForge developers.

<pre>$ type -all fontforge<br>fontforge is /usr/bin/fontforge<br>$ nm /usr/bin/fontforge <br>nm: /usr/bin/fontforge: no symbols</pre>
## From your Linux distribution on Fedora

To install FontForge on your Fedora Linux desktop machine run the following yum command as the root user. This will require about 10Mb of download to complete.

<pre># yum install fontforge</pre>

After issuing the yum install you should be able to run FontForge from your menu or directly from the konsole or gnome-terminal by issuing the <em>fontforge</em> command.

Use the command below if you also want to install the debugging information for FontForge from the Fedora repository. Note that this might require hundreds of megabytes of download if you do not already have many of the dependent debuginfo packages installed.

<pre># debuginfo-install fontforge
</pre>
## Debian / Ubuntu

sudo apt get install fontforge

sudo apt-get install python-fontforge

## From Supplied Binaries

Clicking on the Download button on the main menu of the FontForge website takes you to sourceforge.net. Under the fontforge-executables directory you will find Windows, OSX, and Linux binaries. For Linux you will see rpm files which can be installed.

## From github

Github is a website which allows developers to quickly contribute to the source code of a project. Users can also connect to the source code from the github project to get the very latest code available for a project. While many folks think that contributing to an open source project requires you to have software development skills, you can also make major contributions by reporting back errors in the software.

Part of this book discusses the use of spiro curves in font design. If you do not wish to use that functionality you can skip the installation of libsprio and carry on with the subsequent steps to install FontForge itself from github.

Get libspiro from the download link on the spiro homepage (http://libspiro.sourceforge.net). Installation follows the standard procedure for an autotools buildable project as shown below:

<pre>$ tar xf libspiro_src-20071029.tar.bz2 
$ cd ./libspiro-20071029/
$ ./configure 
$ make
$ sudo make install
</pre>

OK, so now you might have installed libspiro onto your machine and are ready to install FontForge from it's sources on github. The github download should be about 50Mb in size.

<pre>$ git clone https://github.com/fontforge/fontforge.git
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
</pre>
## Some Common Issues While Building

You might be tempted to use the --with-freetype-source configure option. This option should only be needed if you are debugging truetype font hints by stepping through them or other advanced functionality.

If you have not compiled software on your Fedora machine, after installing gcc, automake, autoconf and others then you might get an error during the execution of autogen.sh with libtoolize. If that is the case you might need to install the libtool-ltdl-devel package on Fedora or a similar development package on another Linux distribution.
