---
published: true
layout: bookpage_fr-FR
weight: 15
category: Getting To Know FontForge
title: Installation de FontForge
---

FontForge est un logiciel libre, vous pouvez donc télécharger, partager et installer des copies sans aucune
restriction sur l'utilisation &mdash; l'utilisation commerciale ou personnelle est encouragée.
Il s'agit d'une application gérée par la communauté et n'importe qui peut contribuer au code source.

FontForge est disponible en paquets faciles à installer pour les systèmes d'exploitation Windows, Mac OS X et GNU+Linux.

### Installation de FontForge sur Windows

Un [guide d'installation (en anglais)](http://fontforge.github.io/en-US/downloads/windows/) est disponible pour les versions officielles de Windows, préparées par Jeremy Tan.

### Installation de FontForge sur Mac OS X

Un [guide d'installation (en anglais)](http://fontforge.github.io/en-US/downloads/mac/) est disponible pour les versions officielles Mac, préparé par le Dr Ben Martin. 

### Installation sur GNU/Linux

La méthode la plus simple pour obtenir FontForge sur votre machine Linux est d'utiliser le dépôt de paquets de votre distribution Linux.

#### Debian ou Ubuntu

Le paquet FontForge inclus dans Ubuntu 14.04 par défaut date de 2012, il est donc préférable d'installer le paquet plus à jour à partir de la [PPA (Personal Package Archive)](https://launchpad.net/~fontforge/+archive/ubuntu/fontforge) de FontForge.

Vérifiez que le script d'aide `add-apt-repository` est installé:
    
```sh
sudo apt-get install software-properties-common;
```

Ajoutez la PPA FontForge (qui ajoutera également la clé d'authentification):
    
```sh
sudo add-apt-repository ppa:fontforge/fontforge;
```

Mettez à jour la liste des logiciels pour inclure les paquets de la PPA:
    
```sh
sudo apt-get update;
```

Installez FontForge:
    
```sh
sudo apt-get install fontforge;
```

#### Fedora

Pour installer FontForge sur votre machine Fedora Linux, exécutez la commande yum suivante en tant
qu'utilisateur root.
Environn 10 Mo devront être téléchargé pour terminer.


```
yum install fontforge;
```

Si vous n'avez pas compilé de logiciel sur votre machine Fedora, après avoir installé gcc, automake, autoconf et autres, vous pourriez obtenir une erreur lors de l'exécution de autogen.sh avec libtoolize.
Si c'est le cas, vous devrez peut-être installer le paquet libtool-ltdl-devel sur Fedora ou un package de développement similaire sur une autre distribution GNU+Linux.

Après l'installation de yum, vous devriez être en mesure d'exécuter FontForge à partir de votre menu ou directement à partir de la konsole ou gnome-terminal en émettant la commande `fontforge`.

## Compilez votre propre version à partir de Github

GitHub est un service d'hébergement de code source où tout le monde peut contribuer au développement d'un logiciel.
Il stocke l'état de développement actuel de l'application.
S vous souhaitez accéder à une fonctionnalité qui n'est pas encore disponible dans les paquets officiels, vous pouvez créer votre propre version à partir de Github.

Des instructions complètes (en anglais) sont disponibles à l'adresse <https://github.com/fontforge/fontforge/blob/master/INSTALL-git.md>

## Débogage de FontForge

Voir la section [Débogage](When_Things_Go_Wrong_With_Fontforge_Itself) pour plus d'informations.

