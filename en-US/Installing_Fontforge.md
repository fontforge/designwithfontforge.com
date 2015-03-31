---
published: true
layout: bookpage
weight: 15
category: Getting To Know FontForge
title: Installing FontForge
---

[FontForge] is a free and open-source software, which noticeably means that you can download and
install it without restrictions.  It also means that this is a community-maintained application (anyone can contribute to the source code).

FontForge is available for Windows, Mac OS and GNU/Linux (“Linux”) operating systems. The focus of this section is on installation of FontForge on a Linux machine. As many of the developers of FontForge use Linux on a daily basis, building from source tends to be simplest on that platform.

<p class="note"><b>Note:</b> If you run into a problem using FontForge, or if FontForge is missing a
feature, you can open up an issue on the <a href="https://github.com/fontforge/fontforge">software’s
repository</a>, which developers will have a look at &mdash; even if you’re just getting started.</p>


## Install Pre-compiled Packages

Clicking on the Download button on the main menu of the [FontForge website][FontForge] will take you
to the SourceForce repository. Under the `fontforge-executables` directory you will find Windows,
OSX, and Linux binaries. For Linux you will see rpm files which can be installed.

### Installing on Windows

Jeremy Tan provides [recent builds](http://sourceforge.net/projects/fontforgebuilds/) of
FontForge for Windows.

Alternatively, the stable release installer from 2012 can be found on the [old SourceForge repository]
(http://sourceforge.net/projects/fontforge/files/fontforge-executables/).

### Installing on Mac OS X

An [installation guide](http://fontforge.github.io/en-US/downloads/mac/) is available on the new
website, which is itself still under development.

### Installing on GNU/Linux

The easiest method to get FontForge on your Linux machine is to use your Linux distribution’s package repository.

#### Debian or Ubuntu

The FontForge package included in Ubuntu 14.04 by default dates from 2012, so it is preferable to install the more up-to-date package from the FontForge [Personal Package Archive (PPA)] (https://launchpad.net/~fontforge/+archive/ubuntu/fontforge).

Check that the helper script `add-apt-repository` is installed:
    
```
sudo apt-get install software-properties-common
```

Add the FontForge PPA (which will also add the authentication key):
    
```
sudo add-apt-repository ppa:fontforge/fontforge
```

Update the software list to include packages from the PPA:
    
```
sudo apt-get update
```

Install FontForge:
    
```
sudo apt-get install fontforge
```

#### Fedora

To install FontForge on your Fedora Linux desktop machine run the following yum command as the root
user. This will require about 10MiB of download to complete.

```
yum install fontforge
```

If you have not compiled software on your Fedora machine, after installing gcc, automake, autoconf
and others then you might get an error during the execution of autogen.sh with libtoolize. If that
is the case you might need to install the libtool-ltdl-devel package on Fedora or a similar
development package on another Linux distribution.

After issuing the yum install you should be able to run FontForge from your menu or directly from
the konsole or gnome-terminal by issuing the *fontforge* command.


## Compile your own version from Github

In some cases, perhaps because you want access to a feature not yet available in the pre-compiled package, you may wish to compile your own version from the code available on Github.  GitHub is a source-code hosting service where everyone can contribute to the development of a piece of software.  The instructions in this section relate specifically to compiling on Ubuntu 14.04.

#### Install preliminary software

Install packages to allow the building of software:

```
sudo apt-get install build-essential automake flex bison
```

Install the *unifont* package to get a full display of the reference glyphs.  [Unifont] (http://savannah.gnu.org/projects/unifont) includes glyphs for all Unicode codepoints, and FontForge will use it if it is installed.

```
sudo apt-get install unifont
```

Install other required packages: 

```
sudo apt-get install packaging-dev pkg-config python-dev libpango1.0-dev
libglib2.0-dev libxml2-dev giflib-dbg libjpeg-dev libtiff-dev uthash-dev
```

#### Build *libspiro*

FontForge uses [libspiro] (http://github.com/fontforge/libspiro) to simplify the drawing of curves.

Download the code:

```
git clone https://github.com/fontforge/libspiro.git
```

Run the following commands in sequence (that is, wait for each one to complete before running the next):

```
cd libspiro
autoreconf -i
automake --foreign -Wall
./configure
make
sudo make install
cd ..
```

#### Build *libuninameslist*

FontForge uses [libuninameslist] (http://github.com/fontforge/libuninameslist) to access attribute data about each Unicode code point.

Download the code:

```
git clone https://github.com/fontforge/libuninameslist.git
```

Run the following commands in sequence (that is, wait for each one to complete before running the next):

```
cd libuninameslist
autoreconf -i
automake --foreign
./configure
make
sudo make install
cd ..
```

#### Build FontForge

Download the code:

```
git clone https://github.com/fontforge/fontforge.git
```

Run the following commands in sequence (that is, wait for each one to complete before running the next):

```
cd fontforge
./bootstrap
./configure
make
sudo make install
cd ..
```

Make the system aware of the new libraries:
    
```
sudo ldconfig
```

You might be tempted to use the `--with-freetype-source` configure option. This option should only
be needed if you are debugging TrueType font hints by stepping through them or other advanced
functionality.


## Debugging the FontForge software

If at some stage you find reproducible stability issues with FontForge you might like to install the
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

Use the command below if you also want to install the debugging information for FontForge from the
Fedora repository. Note that this might require hundreds of megabytes of download if you do not
already have many of the dependent debuginfo packages installed.

```
debuginfo-install fontforge
```

See the [Debugging] section for more information.


[FontForge]: http://fontforge.github.io/
[Debugging]: When_Things_Go_Wrong_With_Fontforge_Itself.html
