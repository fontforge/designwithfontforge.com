---
published: true
layout: bookpage_pt-BR
weight: 21
category: Getting To Know FontForge
title: Desenhando com Spiro
---

Spiro é um conjunto de ferramentas para desenhar curvas em um método alternativo às curvas B&eacute;zier mais
tradicionais. Embora seja opcional, o FontForge pode ser instalado para incluir um modo Spiro que oferece
ferramentas para criar esse tipo específico de curva.
Consulte [“Instalando FontForge”][“Installing FontForge”] para obter mais detalhes sobre como incluir a biblioteca Spiro em seu programa.

O desenho de Spiro tem uma abordagem diferente, que pode ajudá-lo a obter suas curvas feitas de maneira
diferente e resolver seus problemas de concepção. Experimente!

## O Conjunto de Ferramentas Spiro

Muitas das mesmas ferramentas de desenho estão disponíveis no modo Spiro como as descritas no capítulo [“Usando as
ferramentas de desenho do FontForge”][“Using the FontForge drawing tools”], mas algumas delas funcionam de forma muito diferente quando você está no modo Spiro.

<img src="../en-US/images/spiro_tools_labels.png" alt width="600">

Existem cinco tipos diferentes de pontos Spiro:

1. Pontos G4, usados para uma curva mais gentil
2. Pontos G2, usados para uma curva mais nítida
3. Pontos de canto, para juntas de canto abruptas
4. Pontos de restrição anteriores, usados quando o contorno do caminho muda de uma curva para uma linha
   reta
5. Próximos pontos de restrição, usados quando o caminho muda de uma linha reta para uma curva

## Desenhando um ‘S’ com Spiro

Passar pelo exercício de desenhar um ‘S’ com o Spiro fará você se sentir confortável com o Spiro.

<p class="note"><b>Dica:</b> Ao desenhar no modo Spiro, comece sempre com um ponto G4 ou G2.
Começar com os outros tipos de pontos realmente não funciona no FontForge.</p>

Comece com um ponto G4 no ponto mais alto do seu ‘S,’ seguido por um ponto de canto, depois outro
ponto de canto. Trabalhe no sentido horário em torno da forma da letra.

<img src="../en-US/images/S_at_83_from_Untitled1_-_023.png" alt>

Prossiga com um G4, um ponto de restrição anterior e um próximo ponto de restrição.

<img src="../en-US/images/S_at_83_from_Untitled1_-_022.png" alt>

Em seguida, adicione outro ponto G4, seguido por mais dois pontos de canto.

<img src="../en-US/images/S_at_83_from_Untitled1_-_024.png" alt>

E então um G4, seguido de uma restrição anterior, seguida de uma próxima restrição.

<img src="../en-US/images/S_at_83_from_Untitled1_-_025.png" alt>

Em seguida, adicione mais um ponto G4 e, finalmente, feche a forma no ponto inicial clicando nele
com a ferramenta do ponto G4.

<img src="../en-US/images/S_at_83_from_Untitled1_-_026.png" alt>

Agora você quase tem um ‘S’! Comece a mexer os pontos para que seu S fique da maneira que você quer.

<div class="warn"><p>Oops, o que aconteceu?</p>

<img src="../en-US/images/S_at_83_from_Untitled1_-_032.png" alt>

<p>Não se preocupe &mdash; O Spiro às vezes faz coisas engraçadas. Basta clicar em <i><b>Desfazer</b></i>, ou continuar mexendo
os pontos para acertar as coisas.</p></div>

Agora, você deve ver algo como isto:

<img src="../en-US/images/S_at_83_from_Untitled1_-_028.png" alt>

Troque do modo Spiro para o modo B&eacute;zier. Você notará que há muitos pontos na
curva resultante &mdash; você pode querer limpar alguns deles.

<img src="../en-US/images/S_at_83_from_Untitled1_-_031.png" alt>

Para limpar esses pontos extra, vá para o menu "_**Elemento**_" e selecione "_**Simplificar**&nbsp;⇨&nbsp;**Simplificar**_".
Em seguida, vá para "_**Elemento**&nbsp;⇨&nbsp;**Adicione&nbsp;Extrema**_". Finalmente, vá para "_**Elemento**&nbsp;⇨&nbsp;**Redondo**&nbsp;⇨&nbsp;**Para&nbsp;inteiro**_".
Após essas operações de limpeza, você verá algo como isto:

<img src="../en-US/images/S_at_83_from_Untitled1_-_029.png" alt>

Você pode continuar a experimentar o modo Spiro para ter uma ideia de como ele difere do desenho com
B&eacute;zier.
A terminologia é diferente, mas, como as outras ferramentas de desenho e ajuste do FontForge, a prática
te dará as coisas que deseja.

[“Installing FontForge”]: Installing_Fontforge.html
[“Using the FontForge drawing tools”]: Using_the_Fontforge_Drawing_Tools.html
