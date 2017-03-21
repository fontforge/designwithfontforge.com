---
published: true
layout: bookpage_fr-FR
weight: 75
category: Appendices
title: Importation de glyphes d'autres programmes
---

Il est possible de dessiner des glyphes dans une application d'illustration (tel qu'Inkscape, Adobe Illustrator, etc.) et de les importer comme EPS ou SVG.

## SVG codé à la main

#### Comment le préparer

* Le fichier SVG a pas besoin de `viewBox="0 0 1000 1000"`

* La largeur n'a pas d'importance, tant qu'elle est plus large que votre glyphe. Mais une hauteur de 1000 est important pour faciliter l'importation.

* `y=0` sera la ligne de l'ascendante et `y=1000` sera la ligne de la descendante.

* (Il peut y avoir quelques glyphes qui vont au-delà de ces lignes. Peut-être FontForge fera la bonne chose, mais nous ne l'avons pas testé.)

* Par défaut, FontForge configurera votre ligne de base à `y=800`. Dans le système de coordonnées FontForge, la ligne de base se trouve à '0' sur l'ordonnée.

* Pour définir la ligne de base où vous la voulez dans FontForge, prenez la coordonnée y pour votre ligne de base en SVG. Ce sera le point vertical de FontForge pour la ligne d'ascendante dans son système de coordonnées. (1000 - y) pour la descendante. Allez dans `Élément, Infos fonte` et dans le menu Général, placez la valeur de l'ascendante dans  l'entrée "Ascent" et celle de la descendante dans l'entrée "Descent". Les deux seront positifs. Le cadratin (la taille Em) doit rester à 1000 (comme c'est la hauteur en unités SVG).

* Lors du dessin du glyphe, il est préférable d'utiliser des coordonnées relatives. Commencez le glyphe avec `<path d="M Xvalue,Yvalue`. Si vous pouvez dessiner le glyphe à partir d'un point tout à gauche, alors le XValue sera l'approche gauche par défaut (LeftBearing) que FontForge utilise. Vous pouvez ajuster cela facilement après l'importation du glyphe et devriez avoir besoin de le faire de toute façon après avoir testé la police. Pour le Yvalue, quand vous pouvez commencer à dessiner à partir de la ligne de base, utilisez cette valeur de ligne de base pour le Yvalue.

* Toujours terminer l'attribut du chemin d avec un z. Le SVG importera sans cela, mais le glyphe ne s'affichera pas directement dans la fenêtre principale jusqu'à ce que vous redémarriez fontforge si vous oubliez de mettre un z après le dernier point du chemin.

* Lorsque vous dessinez des trous (comme pour la lettre P), ne commencez pas un nouveau nœud de chemin. Il suffit d'utiliser z à la fin du premier chemin et commencez de nouveau avec `mNewX,NewY` pour commencer à dessiner le trou. Utilisez l'attribut `fill-rule="evenodd"` pour le chemin et cela fonctionnera correctement.


#### Flux de travail

Utilisez un navigateur Web pour afficher le SVG sur lequel vous travaillez. Vous pouvez utiliser un fichier nommé "template.svg" qui est 1200 par 1200, mais s'affiche à 800 par 800 afin qu'il ne défile dans la fenêtre du navigateur.

Dans ce modèle, tracez les lignes directrices à `y=100, y=1100, y=(100 + {ligne de base, hauteur de capitale, etc.}, x=100, x=1100`

Puis importez le glyphe SVG sur lequel vous travaillez dans ce document avec `<image xlink:href="LC_p.svg" x="100" y="100" width="1000" height="1000" />`

Vous pouvez maintenant coder manuellement votre lettre dans une fenêtre et actualiser le navigateur dans l'autre pour le voir apparaître au-dessus des lignes directrices.

## Listes de glyphes personnalisées

1. Créez un fichier `namelist.txt`, en utilisant par exemple une feuille de calcul pour répertorier les points de code et les noms de glyphes unicode. Par exemple:

```
0xEC00 octDotDhe
0xEC01 octDotDheDbl
0xEC02 octDotDheTrpl
0xEC03 octDotDheQdrpl
0xEC04 octDotLik
0xEC05 octDotLikDbl
0xEC06 octDotLikTrpl
0xEC07 minirLik
0xEC08 minirDhe
0xEC09 minirBawah
0xEC0A soroganDhe
0x-001 soroganLik
```

Pour les glyphes sans point Unicode, utilisez un point de code de -1, comme dans la dernière ligne de l'exemple ci-dessus.

Puis ouvrez FontForge et allez dans `Codage > Ouvrir une liste de noms` puis utilisez `Renommer les glyphes` (Puisque `Ouvrir une liste de noms` ajoute seulement la liste de noms personnalisée à l'ensemble des options disponibles dans les commandes de renommage subséquentes).
