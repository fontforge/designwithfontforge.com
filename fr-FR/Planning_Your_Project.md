---
published: true
layout: bookpage_fr-FR
weight: 9
category: Before You Begin
title: Planification de votre projet
---

Maintenant que vous avez une idée de la façon dont un design de police peut varier, vous pouvez décider si
votre projet aura une seule fonte, si ce sera une collection de plusieurs fontes inter-connexes, si ce sera
une famille de trois ou quatre styles (maintenant classique) ou si ce sera quelque chose de plus grand encore.

Les styles communs de familles de polices comprennent:

* Une graisse régulière et grasse
* Régulier, gras, italique &mdash; éventuellement avec un italique gras
* Mince, léger, book, régulier, semi-gras, gras, extra-gras, noir
* Régulier, condensé, gras et gras condensé
* Étroit, condensé, large et extra large
* Régulier, semi-orné, orné, très orné, extrêmement orné.

Bien qu'il existe des raisons pour lesquelles des modèles typiques dans les familles existent, vous pouvez décider
que vous voulez un genre très différent de regroupement.

La portée du projet peut être déterminée exclusivement par votre ambition et votre quantité de temps libre. Mais les objectifs de projet sont souvent déterminés par l'utilisation que vous avez pour la collection ou la famille de polices, ou, encore plus, par les besoins de votre client. Certes, pour les concepteurs de type professionnel, les deux dernières questions sont généralement les facteurs déterminants.

## Sentiment

L'aspect le plus important d'un design de police est le sentiment qu'il évoque. C'est notoirement
difficile à verbaliser, mais c'est ce qui rend une police de caractères significativement différente de toute autre.

Un concepteur de police du Portugal, Natanael Gama, a conçu la [famille Exo](https://www.google.com/fonts/specimen/Exo) avec FontForge.
Sur sa page d'accueil, il décrit un autre projet pour le sculpteur [John Williams](http://ndiscovered.com/john-williams/) et inclut
un graphique montrant son exposé dans une matrice de continuums de sentiments:

* Figuratif à abstrait 50%
* Gracieux à robuste: 30%
* Calme à énergique: 0%
* Étonnant à simple: 15%
* Expérimental à standard: 15%
* Prestigieux à ordinaire: 15%
* Autres idées: Beau, Espaces extérieurs, Condition humaine

## Couverture des glyphes

Une police est toujours une police, même si elle ne contient qu'un seul glyphe. Mais une police peut
également avoir quelques centaines voire des milliers de glyphes. Si votre projet est auto-initié,
alors ce choix est finalement arbitraire. Vous pouvez décider que vous voulez seulement des capitales,
ou que vous voulez inclure les glyphes trouvés dans les autres polices que vous utilisez. Si vous
travaillez pour un client, vous voudrez peut-être préciser la langue ou les langues que la police est
destiné à soutenir. Votre objectif pourrait également être d'étendre une police existante, en ajoutant
quelques glyphes pour l'utiliser dans une ou plusieurs langues supplémentaires.

C'est certainement une bonne idée de faire ce choix délibérément, et de rester du côté sûr en incluant
moins plutôt que trop. Souvent au fur et à mesure que la police de caractères est réalisée, il peut être
tentant d'inclure de plus en plus de glyphes &mdash; mais il est souvent plus bénéfique de continuer à
améliorer l'ensemble de glyphes que d'en ajouter de nouveaux.

## Flux de travail pour famille multi-styles

Si vous savez dès le début que vous aurez plus d'une fonte, vous économiserez du temps si vous planifiez
et construisez la famille de fontes systématiquement, et travaillez sur les styles en parallèle, 
plutôt que de compléter un style à la fois.

Il est bien sûr impossible de créer *chaque* style d'une manière complètement parallèle, mais il est
possible de terminer une étape de conception donnée pour chaque style afin de vérifier et d'être sûr des
relations entre les styles, au début du processus. Vous trouverez peut-être qu'il est utile de terminer
un ensemble complet de lettres de test (comme “adhésion”) pour une version régulière, puis de faire des
“adhésion” pour les autres styles suivants. Cependant, vous pouvez également rendre le processus encore
plus granulaire et prendre des décisions sur des parties spécifiques des lettres de base (comme le ‘n’ et
‘o’) pour tous les styles ensembles.

En fonction de la taille et de la composition de la famille que vous planifiez, vous constaterez que
de créer des exemples qui peuvent être interpolés de glyphes pourrait vous faire gagner du temps, non
seulement pour interpoler des styles intermédiaires, mais pour aider à faire des choix de conception au
sujet de ces variables typographiques qui se répètent à travers les membres d'une famille.
Pour une description des variables que vous devriez envisager, consultez le chapitre ["Qu'est-ce qu'une
police de caractères?"](What_Is_a_Font.html).

## Technique: Gestion des versions 

Vous devriez apprendre à utiliser Git et Github pour stocker vos fichiers et utiliser le format "SFDir"
pour vos sources.

* <https://help.github.com/articles/what-are-other-good-resources-for-learning-git-and-github>
* <http://justinhileman.info/article/git-pretty/>

## Processus général

<iframe src="https://docs.google.com/file/d/0BxPD9osVW0s6SGNQRUs3ZmZrUzA/preview" width="640" height="480"></iframe>

## Environnements de test

Lors de la planification de votre projet, vous devez considérer le médium typographique auquel la police de caractères sera
destinée principalement et secondairement:
Mobile et web, ou projecteurs numériques, ou imprimantes à jet d'encre et laser de bureau à bas prix, ou imprimantes laser pour
impression haut de gamme, ou impression offset de magazine, ou impression de journaux à grande volume... et ainsi de suite.
Vous devriez alors essayer d'acquérir ou avoir accès à ces technologies de composition, afin que vous puissiez voir les
résultats réels de votre travail.

Tout au long du processus de conception de police, vous trouverez très utile de prévisualiser un jeu de texte avec votre police
(prototype) à une résolution supérieure à celle de votre ordinateur portable ou de votre poste de travail. Cela signifie
typiquement une imprimante laser avec «vraie» DPI de 1200 et Adobe PostScript 3. Pour les particuliers, il est possible d'en
acheter une pour environ 500 $.  En 2013, ces imprimantes étaient recommandées:

* HP P2055d
* Xerox Phaser 4510
* Xerox Phaser 5550
* Nashua / Ricoh P7026N

En mai 2013, le studio [Production Type](http://productiontype.com) offrait une Xerox 7525 avec un contrôleur "fiery", qui
coûtait environ 12 000 € à l'achat mais qui était de 300 € par mois en location avec toner, pièces et maintenance .
À la fin de 2015, Octavio Pardo a loué un [Xerox Phaser 7100](
Http://www.xerox.es/oficina/impresoras/impresoras-en-color/phaser-7100/eses.html) de manière similaire pour 30 € par mois.


## Fonctionnalités OpenType

Vous pouvez planifier les fonctionnalités OpenType de votre projet avant de commencer à dessiner.
Les caractéristiques communes incluent:

* `liga` Ligatures
* `onum`, `lnum` Numéros

Pour certaines langues `locl` fonctionne mais pour d'autres il ne marche pas, il est donc préférable d'exposer des formes 
spécifiques à la langue via` locl` et `ssNN` ou` cvNN`.

La spécification OpenType permet certaines caractéristiques qui ne sont pas recommandées:

* Fonction `hist`.  Lire la suite dans cette [discussion sur TypeDrawers](http://typedrawers.com/discussion/1358/what-are-the-best-practices-for-the-hist-feature-long-s).

## Lecture complémentaire (en anglais)

* Aoife Mooney's presentation on the type design process at TypeCon 2014: <https://vimeo.com/107421895>
* TypeDrawers discussion of [Printer recommendations for proofing](http://typedrawers.com/discussion/314/printer-recommendations-for-proofing)
