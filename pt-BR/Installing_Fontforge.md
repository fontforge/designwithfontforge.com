---
published: true
layout: bookpage
weight: 15
category: Getting To Know FontForge
title: Installing FontForge
---

FontForge is libre software, so you can download, share and install copies without any restrictions on usage - both commercial or personal use is encouraged.
It is a community-maintained application, and anyone can contribute to the source code.

FontForge is available in easy to install packages for Windows, Mac OS X and GNU+Linux operating systems. 

### Installing FontForge on Windows

An [installation guide](http://fontforge.github.io/en-US/downloads/windows/) is available for the official Windows builds, prepared by Jeremy Tan.

### Installing FontForge on Mac OS X

An [installation guide](http://fontforge.github.io/en-US/downloads/mac/) is available for the official Mac builds, prepared by Dr Ben Martin. 

### Installing on GNU/Linux

The easiest method to get FontForge on your Linux machine is to use your Linux distribution’s package repository.

#### Debian or Ubuntu

The FontForge package included in Ubuntu 14.04 by default dates from 2012, so it is preferable to install the more up-to-date package from the FontForge [Personal Package Archive (PPA)] (https://launchpad.net/~fontforge/+archive/ubuntu/fontforge).

Check that the helper script `add-apt-repository` is installed:
    
```sh
sudo apt-get install software-properties-common;
```

Add the FontForge PPA (which will also add the authentication key):
    
```sh
sudo add-apt-repository ppa:fontforge/fontforge;
```

Update the software list to include packages from the PPA:
    
```sh
sudo apt-get update;
```

Install FontForge:
    
```sh
sudo apt-get install fontforge;
```

#### Fedora

To install FontForge on your Fedora Linux desktop machine run the following yum command as the root user. 
This will require about 10MiB of download to complete.

```
yum install fontforge;
```

If you have not compiled software on your Fedora machine, after installing gcc, automake, autoconf and others then you might get an error during the execution of autogen.sh with libtoolize. 
If that is the case you might need to install the libtool-ltdl-devel package on Fedora or a similar development package on another GNU+Linux distribution.

After issuing the yum install you should be able to run FontForge from your menu or directly from the konsole or gnome-terminal by issuing the `fontforge` command.

## Compile your own version from Github

GitHub is a source-code hosting service where everyone can contribute to the development of a piece of software. 
It stores the current leading state of development of the application.
In some cases, perhaps because you want access to a feature not yet available in the release packages, you may wish to compile your own version from Github.

Full instructions are at <https://github.com/fontforge/fontforge/blob/master/INSTALL-git.md>

## Debugging the FontForge software

When you See the [Debugging](When_Things_Go_Wrong_With_Fontforge_Itself) section for more information.
