---
published: true
layout: bookpage_fr-FR
weight: 69
category: Appendices
title: Quand les choses tournent mal avec FontForge
---

FontForge est développé sur Github.
L'équipe de FontForge utilise la section _Issues_ de Github pour discuter des problèmes, des erreurs et des idées d'améliorations, puis quelqu'un développe une solution et la propose en tant que _Pull Request_.

Pour en savoir plus sur Github, consultez les [bonnes ressources pour l'apprentissage de Git et GitHub](https://help.github.com/articles/good-resources-for-learning-git-and-github/) (en anglais).

## Payer pour du soutien

Cela pourrait être une surprise, mais il est à la fois possible, et encouragé de payer pour du soutien lorsque les choses tournent mal.

Alors que d'autres éditeurs de polices avec des fonctionnalités complètes semblables coûtent des centaines de dollars américains, si nous payions chacun un montant similaire aux développeurs de FontForge pour obtenir que nos bogues les plus ennuyeux soit corrigés, FontForge deviendrait de mieux en mieux.

[FreedomSponsors.org](https://freedomsponsors.org/project/220/) offre un système transparent pour inciter les développeurs de FontForge à résoudre rapidement les problèmes qui vous préoccupent.

1. Créez un problème (issue) sur la page FonForge de Github décrivant ce que vous désirez voir changer (voir ci-dessous). Copiez l'URL du problème dans le presse-papiers.
- Visitez FreedomSponsors et parrainez un nouveau problème, en utilisant l'URL que vous avez copiée plus tôt.
- Révisez le problème sur Github et ajoutez en commentaire le lien vers la page de problèmes de FreedomSponsors, avec une note personnelle que vous offrez une prime payée pour que ce problème soit fermé

## Signaler un bogue

1. Connectez-vous à Github (après avoir créé un compte, si vous n'en avez pas encore) et visitez la page de [suivi des problèmes de FontForge](https://github.com/fontforge/fontforge/issues). 
- Dans la zone de recherche des problèmes, essayez de rechercher des problèmes similaires, pour voir si le problème auquel vous êtes confronté a déjà été signalé.
Si c'était le cas, et que votre problème est lié, mais pas tout à fait le même, veuillez commenter ce problème avec votre propre opinion sur la question.
- Si ce n'est pas déjà signalé, ouvrez un nouveau problème.
Cliquez sur le bouton vert "New Issue", puis décrivez votre question, ce que vous avez fait pour déclencher un plantage ou votre idée d'amélioration.

Inclure les détails pertinents, tels que:

* Votre système d'exploitation et sa version;
* La version de FontForge et d'où elle provient;
* **Ce qui se passe, étape par étape, pour reproduire le problème;**
* **Quels messages d'erreur vous voyez;**
* **Le comportement auquel vous vous attendez**

Vous pouvez glisser-déposer des captures d'écran ou d'autres images directement dans la page de problème pour les inclure.

Une façon facile de signaler des problèmes est d'enregistrer des vidéos d'écran où vous faîtes la narration des choses qui vous intéressent comme elles se produisent, puis le télécharger sur YouTube et inclure un lien vers votre vidéo

Pour reproduire le problème, il peut être utile de partager avec la communauté des développeurs les fichiers avec lesquels vous travaillez. Si vous pouvez faire un fichier petit qui ne contient que ce qui est nécessaire pour reproduire le problème, s'il vous plaît créez un fork du dépôt de fontforge et ajouter ces fichiers à /tests/fonts et soumettez un "pull request". Vous pouvez également placer des fichiers sur votre propre site Web ou sur un service de partage de fichiers temporaires (comme MegaUpload, DropBox, Google Drive, etc.). Enfin, si vous ne souhaitez pas rendre vos fichiers accessibles au public, vous pouvez fournir une adresse e-mail pour un développeur de FontForge qui vous contactera pour obtenir une copie privée du fichier.

S'il vous plaît ne pas fermer les problèmes des autres &mdash; demandez-leur de fermer le problème s'il est résolu à leur satisfaction.

## Comment signaler un plantage

Le processus est le même pour signaler un plantage ou d'autres types de bogues que pour les nouvelles fonctionnalités ou questions. L'envoi d'un bon rapport de plantage aux développeurs de FontForge peut vraiment les aider beaucoup à améliorer la stabilité du programme pour tout le monde!
N'hésitez pas à signaler de tels problèmes, car un plantage qui n'est pas signalé est un plantage qui est beaucoup moins susceptible d'être corrigé.

Si vous voyez FontForge planter en cours d'utilisation, créez un rapport de problème comme ci-dessus.
Si vous avez un fichier de police particulier (SFD, UFO, OTF, TTF, etc.) qui déclenche le plantage, vous pouvez soit le télécharger dans un nouveau dépôt Github vous-même (ou Dropbox ou autre) et inclure un lien, ou soit publier votre email et demandez à un développeur de vous envoyer un courriel pour obtenir une copie en privé.

Avec votre description, les développeurs de FontForge essayeront de reproduire le plantage.
S'ils peuvent le faire, ils seront en mesure de déterminer où le code va mal, et de créer un correctif.

Une fois que le _pull request_ résolvant le problème fusionné, vous aurez besoin d'obtenir une nouvelle version. Vous pouvez effectuer l'une des opérations suivantes:

* Recompiler à partir du dernier code source de Github (voir [Installation de Fontforge](Installing_Fontforge.html)),
* Vérifier si une compilation quotidienne est disponible (souvent possible pour [Mac OS X](http://fontforge.github.io/en-US/downloads/mac/)), ou
* Attendre la prochaine version (souvent en quelques semaines).

### Les meilleurs rapports de plantage

Pour aider les développeurs à découvrir ce qui ne va pas et __vraiment__ comprendre comment le réparer, vous pouvez faire un peu plus de travail et faire un _backtrace_.
Un backtrace inclut une liste des fonctions du programme qui ont appelé les autres pour arriver là où le programme a cessé de fonctionner. Un backtrace est très utile s'il contient également les numéros de ligne des fonctions.

Pour faire un backtrace, vous devrez installer à partir de source avec _information de débogage_ incluse.
Utilisez les commandes `type` et `nm` pour trouver le chemin et l'état de vos binaires fontforge.
Exemple:

```sh
$ type -all fontforge;
fontforge is /usr/bin/fontforge
$ nm /usr/bin/fontforge;
nm: /usr/bin/fontforge: no symbols
$
```

Dans cet exemple, nous voyons `no symbols`, nous devons donc mettre à jour notre installation pour y inclure des informations de débogage.

#### Installer les informations de débogage sur Fedora

Fedora propose dans le dépôt standard une commande permettant d'installer facilement des informations de débogage pour FontForge. (Mais notez que cela peut nécessiter des centaines de mégaoctets de téléchargement si vous ne disposez pas déjà des nombreux paquets debuginfo dépendants).
Pour l'installer, lancez:

```sh
debuginfo-install fontforge;
```

A FAIRE: expliquer comment inclure des informations de débogage à partir de sources compilées

Un backtrace est généré à l'aide du débogueur de projet GNU, `gdb`.
Vous pouvez soit attacher gdb à FontForge déjà en cours, soit démarrer FontForge à l'intérieur de la session gdb elle-même.
Voici un exemple de cette dernière méthode:

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

Ensuite, une fois que vous lancez le débogueur avec la commande run, FontForge s'ouvrira à l'écran:

```
(gdb) run
Starting program: /usr/local/bin/fontforge 
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib64/libthread_db.so.1".
Copyright (c) 2000-2012 by George Williams.
 Executable based on sources from 14:57 GMT 31-Jul-2012-ML-TtfDb-D.
 Library based on sources from 14:57 GMT 31-Jul-2012.
```

De là, vous pouvez utiliser FontForge de la manière habituelle, mais avec l'avantage d'être en mesure de capturer efficacement et de signaler tous les problèmes que FontForge peut avoir.

L'avantage majeure d'exécuter FontForge à l'intérieur de gdb est de savoir comment un plantage est arrivé. Sans gdb, lorsque FontForge plante, il disparaîtra de votre écran. Lorsque vous exécutez FontForge à l'intérieur de gdb cependant, un FontForge planté restera ouvert avec ses fenêtres et son interface utilisateur.

Si vous constatez que votre interface ne répond pas, retournez au terminal où vous avez exécuté gdb et vous pourrez voir quelque chose comme `SIGSEGV` dans le texte suivi de l'invite `(gdb)`.
Si vous voyez l'invite `(gdb)`, FontForge ne s'exécute plus.
 
Vous pouvez maintenant (enfin!) utiliser la commande `bt` pour obtenir un backtrace, puis utiliser la commande gdb `quit` pour quitter gdb et fermer la session plantée de FontForge.
Voici un exemple:

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

Un développeur peut voir dans cet exemple de backtrace que FontForge a planté à l'intérieur de la fonction `copy ()`.
La fonction `copy ()` a elle-même été appelée à partir de la fonction `KCD_AutoKernAClass`.
Le backtrace indiquera à un développeur les lignes exactes de ces appels et suggérera que le paramètre passé à `copy ()` était non valide (hors limites) pour déterminer ce que le code ne fait pas correctement.