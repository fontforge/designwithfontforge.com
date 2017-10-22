---
published: true
layout: bookpage_fr-FR
weight: 16
category: Getting To Know FontForge
title: Configuration de FontForge
---


FontForge peut être peaufiné de différentes façons.
Voici quelques trucs et astuces pour le faire.
Vous avez beaucoup d'options pour optimiser FontForge pour votre plateforme et flux de travail.

S'il vous plaît, [dites-nous](https://github.com/fontforge/designwithfontforge.com#how-to-contribute) si vous avez des conseils que vous souhaitez partager.

#### Commençons par le commencement

Lors de toute modification de configuration, assurez-vous de suivre ceci:

1. Quittez FontForge (et X11)
2. Effectuez les modifications
3. Démarrez FontForge et testez vos modifications

## Windows

Actuellement, nous n'avons rien de spécifique à la distribution Windows.
Si vous pensez à quelque chose, [dites-le nous](https://github.com/fontforge/designwithfontforge.com#how-to-contribute).

## GNU+Linux

Actuellement, nous n'avons rien de spécifique à aucune distribution GNU+Linux.
Si vous pensez à quelque chose, [dites-le nous](https://github.com/fontforge/designwithfontforge.com#how-to-contribute).

## Mac OS X

Pour ouvrir l'emplacement d'un long fichier ou dossier:

1. Copiez le chemin
2. `⌘ Tab` pour passer au Finder
3. `⇧⌘G` pour ouvrir le menu Aller &nbsp;&nbsp;→&nbsp;&nbsp; Aller au dossier...
4. `⌘V` pour coller dans le chemin
5. `Aller` pour ouvrir une nouvelle fenêtre Finder à cet emplacement

#### Raccourcis clavier

De nombreux dialogues et éléments de menu ont une lettre qui est s<span class = "underline">o</span>ulignée.
Vous pouvez y accéder immédiatement en appuyant sur <kbd>Ctrl</kbd> + <kbd>Alt</kbd> et sur cette touche.
Par exemple, si une boîte de dialogue vous demande si c'est <span class = "underline">O</span>K, appuyez sur <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>o</kbd>.

Si vous n'utilisez pas un clavier anglais américain, vous pouvez trouver que certains des raccourcis clavier sont idiots. Ou, vous voudrez peut-être simplement les personnaliser pour être ce que vous vous en attendez.
Pour modifier ces touches, ouvrez et modifiez le fichier texte `default`, situé ici:

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/hotkeys/default
```
Lorsque vous installerez la prochaine version, tous les fichiers à l'intérieur de `/Applications/FontForge.app` seront écrasés, donc sauvegardez une copie de votre fichier `default` ailleurs.

#### Taille de l'interface utilisateur

Si l'interface utilisateur semble trop grande ou trop petite, elle peut être mise à l'échelle pour s'adapter à votre ordinateur.
Ouvrez et modifiez le fichier texte `resources`, situé ici:

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/pixmaps/resources
```

Ajoutez la ligne `Gdraw.ScreenWidthCentimeters: 34` si la largeur de votre écran est de 34 cm.
Essayez différentes valeurs jusqu'à ce que vous soyez satisfait.

#### Signets

Dans la boîte de dialogue Fichier, il y a une option `Ajouter un signet à cet emplacement`, mais l'option `Supprimer le signet...` ne fonctionne pas [# 2054](https://github.com/fontforge/fontforge/issues/2054).
Vous pouvez modifier la liste manuellement dans la section `FCBookmarks` du fichier` prefs` situé à

```
~/.config/fontforge/prefs
```

Réinitialisez vos signets en ouvrant le terminal et en collant le texte suivant:

```
sed -i bak -e 's/^FCBookmarks.*/FCBookmarks:     ~\/Library\/Fonts\/;\/Library\/Fonts\/;\/System\/Library\/Fonts\//g' ~/.config/fontforge/prefs;
```

Appuyez ensuite sur Entrée pour exécuter cette commande.
Si vous ne voyez pas d'erreurs, elle devrait avoir fonctionné correctement.

#### Souris à 3 boutons

FontForge peut utiliser les clics d'une souris à trois boutons pour certaines fonctions supplémentaires.
Si vous n'avez pas de souris à trois boutons, vous pouvez l'émuler en l'activant dans les préférences X11/Xquartz, dans l'option `Input` de la section `Emulate three button mouse`

#### Changez l'icône de X11/XQuartz pour l'icône de FF

Si vous utilisez principalement X11 pour FontForge, vous pouvez modifier son icône. Copiez et collez le texte suivant dans le terminal et suivez les instructions

```
sudo cp -f /Applications/FontForge.app/Contents/Resources/FontForge.icns /Applications/Utilities/XQuartz.app/Contents/Resources/X11.icns | sudo touch /Applications/Utilities/XQuartz.app 
```


#### Gestion de fenêtre

FontForge n'est pas une application Mac native, donc le traitement des fenêtres peut être légèrement décalé, en particulier sur les systèmes à double moniteur.
Pour reprendre le contrôle du positionnement des fenêtres, utilisez l'utilitaire libre [ShiftIt](https://github.com/fikovnik/ShiftIt) pour attribuer des raccourcis clavier définissant les positions de fenêtres.

