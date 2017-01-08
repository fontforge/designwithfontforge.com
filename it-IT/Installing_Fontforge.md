---
published: true
layout: bookpage
weight: 15
category: Getting To Know FontForge
title: Installare FontForge
---

FontForge è un software libero, cosí puoi scaricare, condividere e installare copie senza alcuna restrizione sul loro utilizzo - sia per uso commerciale o personale è incoraggiato.
Si tratta di un'applicazione mantenuta dalla comunità, e chiunque può contribuire al codice sorgente.

FontForge è disponibile in pacchetti facili da installare per i sistemi operativi Windows, Mac OS X e GNU + Linux.

### Installare FontForge su Windows

An [installation guide](http://fontforge.github.io/en-US/downloads/windows/) is available for the official Windows builds, prepared by Jeremy Tan.

### Installare FontForge su Mac OS X

An [installation guide](http://fontforge.github.io/en-US/downloads/mac/) is available for the official Mac builds, prepared by Dr Ben Martin. 

### Installare su GNU/Linux

The easiest method to get FontForge on your Linux machine is to use your Linux distribution’s package repository.

#### Debian o Ubuntu

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

## Compila la tua versione da Github

GitHub è un servizio di hosting di codice sorgente in cui ognuno può contribuire allo sviluppo di un software.
Memorizza il stato corrente di sviluppo dell'applicazione.
In alcuni casi, forse perché si vuole l'accesso a una funzione non ancora disponibile nei pacchetti di rilascio, si potrebbe desiderare di compilare la propria versione da Github.

Le istruzioni complete sono disponibili su <https://github.com/fontforge/fontforge/blob/master/INSTALL-git.md>

## Debug del software FontForge

Quando vedi [Debugging](When_Things_Go_Wrong_With_Fontforge_Itself) per ulteriori informazioni.
