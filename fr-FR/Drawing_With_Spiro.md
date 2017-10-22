---
published: true
layout: bookpage_fr-FR
weight: 21
category: Getting To Know FontForge
title: Dessin avec Spiro
---

Spiro est une boîte à outils pour concevoir des courbes avec une méthode alternative aux courbes de
B&eacute;zier plus traditionnelles. Bien que cela soit facultatif, FontForge peut être installé pour
inclure un mode Spiro qui vous offre des outils pour créer ce type spécifique de courbes. Voir
[“Installation de FontForge"] pour plus de détails sur la façon d'inclure la bibliothèque Spiro dans
votre programme.

Le dessin avec Spiro a une approche différente, qui peut vous aider à obtenir des courbes faites d'une
autre manière et à résoudre vos problèmes de conception. Veuillez expérimentez!

## Le jeu d'outils Spiro

Plusieurs des outils décrits dans le chapitre [“Utilisation des outils de dessin de FontForge"] sont aussi
disponibles en mode Spiro, mais certains d'entre eux fonctionnent très différemment.

<img src="../en-US/images/spiro_tools_labels-fr-FR.png" alt width="600">

Il y a cinq types différents de points Spiro:

1. Points G4, utilisés pour une courbe plus douce
2. Points G2, utilisés pour une courbe plus prononcée
3. Points de coin pour angles abrupts
4. Points de contrainte précédente, utilisés lorsque le contour du chemin passe d'une courbe à une droite
5. Points de contrainte suivante, utilisés lorsque le chemin passe d'une ligne droite à une courbe

## Dessin d'un ‘S’ avec Spiro

Cet exercice de dessin d'un ‘S’ avec Spiro vous rendra à l'aise avec ce mode.

<p class="note"><b>Conseil:</b> Lors du dessin en mode Spiro, commencez toujours par un point G4 ou G2.
Commencer par les autres types de point ne fonctionne pas vraiment dans FontForge.</p>

Commencez par un point G4 au point le plus élevé de votre ‘S,’ suivi d'un coin, puis d'un autre coin.
Travaillez dans le sens horaire autour de la forme de la lettre.

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_023-fr-FR.png" alt>

Continuez ceci avec un G4, un point de contrainte précédent et un point de contrainte suivant.

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_022-fr-FR.png" alt>

Ensuite, ajoutez un autre point G4, suivi de deux autres points de coin.

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_024-fr-FR.png" alt>

Ensuite, un G4, suivi d'une contrainte précédente, suivi d'une contrainte suivante.

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_025-fr-FR.png" alt>

Ensuite, ajoutez un point G4 de plus, et enfin, fermez la forme au point de départ en cliquant
dessus avec l'outil de point G4.

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_026-fr-FR.png" alt>

Maintenant vous avez presque un ‘S’! Commencez à pousser les points autour pour obtenir le S désiré.

<div class="warn"><p>Oups, qu'est-ce qui s'est passé?</p>

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_032-fr-FR.png" alt>

<p>Ne vous inquiétez pas &mdash; Spiro fait parfois de drôles de choses. Il suffit de cliquer sur
<i>Annuler,</i> ou de continuer à pousser les points pour remettre les choses sur la bonne voie.</p></div>

Maintenant, vous devriez voir quelque chose comme ceci:

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_028-fr-FR.png" alt>

Basculer hors du mode Spiro en mode B&eacute;zier. Vous remarquerez qu'il ya beaucoup de points sur
la courbe résultante &mdash; Vous voudrez peut-être nettoyer certains d'entre eux.

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_031-fr-FR.png" alt>

Pour nettoyer ces points supplémentaires, allez dans le menu Élément et sélectionnez <i>Simplifier &gt; Simplifier </i>.
Ensuite, allez dans <i>Elément &gt; Ajouter des extrema</i>. Enfin, allez dans <i>Élément &gt; Arrondir &gt; Aux entiers </i>. Après ces opérations de nettoyage, vous verrez quelque chose comme ceci:

<img src="../en-US/images/S%20at%2083%20from%20Untitled1%20-_029-fr-FR.png" alt>

Vous pouvez continuer à expérimenter avec le mode Spiro pour obtenir une idée de la façon dont il diffère du dessin avec B&eacute;zier.
La terminologie est différente, mais comme avec les autres outils de dessin et de réglage de FontForge, avec la pratique vous obtiendrez ce que vous voudrez.

[“Installation de FontForge"]: Installing_Fontforge.html
[“Utilisation des outils de dessin de FontForge"]: Using_the_Fontforge_Drawing_Tools.html
