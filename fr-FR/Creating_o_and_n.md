---
published: true
layout: bookpage_fr-FR
weight: 24
category: workflow
title: Création de ‘o’ et ‘n’
---

Il existe de nombreuses approches pour concevoir une police. Il peut être utile de déconstruire les
processus plus importants afin de commencer rapidement, et de fournir une base solide pour la
totalité de la police de caractères.
Une approche populaire et bénéfique est de concevoir les lettres ‘o’ et ‘n’ d'abord, établir les
éléments essentiels de leur forme, de l'espace et de leur équilibre, avant de les réunir pour former
d'autres lettres. La création des lettres minuscules ‘o’ and ‘n’ peut nous fournir certaines des formes
et des structures fondamentales qui sous-tendent tous les autres lettres nécessaires.

Bien que le design du ‘o’ puisse sembler assez simple, toutes les caractéristiques mentionnées dans le
chapitre [“Qu'est-ce qu'une police de caractères?”] entrent en jeu. Le choix que vous faites sur chaque caractéristique
doit être un choix délibéré.

## Dépassement des rondes

Comment les courbes et les bords droits apparaîssent à l'oeil est un effet d'optique qui affecte la
conception de polices.
Par exemple, pour qu'une courbe et un bord droit semblent alignés correctement sur la ligne de base,
la courbe doit en fait se situer un peu au-dessous de la ligne, produisant un *undershoot*. La partie
du caractère qui descend juste en dessous de la ligne de base afin d'apparaître assis sur la ligne de
base s'appelle le *underhang* &mdash; démontré ci-dessous. Sans underhang, les caractères avec des
courbes autour de la ligne de base apparaîtront désalignés dans une ligne de texte.

<img src="../en-US/images/underhang1.png" alt>

De façon similaire au undershoot, un dépassement (*overshoot*) est nécessaire pour fournir
l'illusion d'alignement à la hauteur d'x et à la hauteur de capitale (voir ci-dessous).

<img src="../en-US/images/nox-opensans.png" alt>

<img src="../en-US/images/nox-merriw_1.png" alt>

## Concevoir le ‘o’ minuscule

La conception du ‘o’ n'est pas seulement à propos de la partie noire de la lettre. Alors que le ‘o’
fournit le poids et la forme de base de la panse, le blanc &mdash; ou contrepoinçoin &mdash; fournit la
taille et la forme utilisée par le reste de la police.
D'une manière générale, on peut également observer que la forme ronde du ‘o’ se répétera dans les
autres caractères. Ceux-ci incluent les b, c, d, e, p et q, et la forme impliquera également le
façonnement des formes des courbes dans tout autre caractère de la police, comme les O, C, D et Q.

En outre, le blanc à l'intérieur du ‘o’ doit être utilisé lors de la conception de l'espacement de notre
police; le 'o' établit le rythme de référence des espaces utilisés entre tous les autres glyphes de la
police. Ces deux valeurs sont très liées, donc essentiellement vous devrez concevoir la quantité d'espace
blanc qui sont les approches latérales de votre ‘o’ aussi. Comme principe général, à l'exception des
polices inclinées ou italiques, le ‘o’ devrait avoir la même quantité d'espace sur les côtés gauche et
droit, et l'espace blanc entre une chaîne de caractères de ‘o’ devrait équilibrer l'espace blanc à
l'intérieur des ‘o’s.

Ici, nous empiétons un peu sur le territoire de l'espacement et des métriques, donc même à ce stade
précoce, vous voudrez peut-être jeter un oeil au chapitre [“Espacement, métriques, et crénage”], qui
couvre les implications de base de l'espacement dans une police.
Cela devrait vous permettre de faire un ‘o’ bien espacé, ce qui vous aidera à concevoir le ‘n’.

## Concevoir le 'n' minuscule

Une fois que vous êtes satisfait de la forme et de l'espacement de votre caractère ‘o’ minuscule tel
qu'observé dans un exemple de chaîne, la prochaine étape de cette approche est de créer un ‘n’
minuscule de forme appropriée, équilibrée, et bien espacées, que vous injectez dans votre chaîne de ‘o’s.

Si l'on considère l'anatomie d'un ‘n’, on peut le diviser en deux ou trois composants constitués d'un
<i>fût</i> et d'une <i>courbe </i>. Cette approche peut nous fournir un raccourci pour maintenir l'équilibre
et l'harmonie au sein de nos caractères à mesure qu'ils sont formés, et que notre ensemble de caractères
grandit. En regardant l'échantillon ‘n’ ci-dessous; Il est divisé en deux composants. Ces composants
séparés se combinent pour former un ‘n’, mais les mêmes composants seront réutilisés plus tard lors de
la formation d'autres caractères; par exemple, le fût à gauche du ‘n’ peut être utilisée pour former le fût
gauche de tous les autres caractères minuscules.

<img src="../en-US/images/n-compo-2.png" alt>

<img src="../en-US/images/n-compo-1_1.png" alt>

En vous reportant à nouveau au chapitre sur l'espacement et les métriques, la conception du caractère ‘n’
devrait suivre le rhythme du processus d'espacement entre les caractères ‘n’ et ‘o’ ensembles.

Maintenant, en recueillant les méthodes que vous avez utilisées pour créer un caractère ‘n’ et ‘o’, vous
êtes prêt à développer le jeu de caractères minuscules. Les qualités des composants du fût et de la courbe
du 'n' et du 'o' indiqueront la façon dont vous pourrez former les autres caractères.
En étudiant les caractères ci-dessous de [Open Sans], nous pouvons voir les relations entre les formes de
caractères séparés et comment elles peuvent être répétées, avec quelques ajustements, pour former
les composants de notre police.

<img src="../en-US/images/h-m-n-curves.png" alt>

<img src="../en-US/images/b-c-d-e-curves.png" alt>

<img src="../en-US/images/i-j-t-f-curves.png" alt>

[“Qu'est-ce qu'une police de caractères?”]: What_Is_a_Font.html
[“Espacement, métriques, et crénage”]: Spacing_Metrics_and_Kerning.html
[Open Sans]: http://opensans.com/
