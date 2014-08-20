---
published: true
layout: bookpage
weight: 95
section: Workflow
title: Appendix -- Install FontForge on Ubuntu 14.04
---

This appendix summarises FontForge installation steps for Ubuntu 14.04.

## Install from a package

The easiest way to install FontForge is to use a pre-compiled package.

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


## Compile your own version from Github

In some cases, perhaps because you want access to a feature not yet available in the pre-compiled package, you may wish to compile your own version from the code availalbe on Github.

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
