---
published: true
layout: bookpage
weight: 07
category: workflow
title: The EM square
---

The 'Em size' or 'UPM'
In a font, each character is fitted into it's own container of space. In traditional metal type this container was the actual metal block of each character. The height of each character piece was uniform, allowing the characters to be set neatly into rows and blocks (see below).

<img src="images/MetalTypeZoomIn.JPG"/>

The height of the type piece is known as the 'Em', and it originated from the width of the uppercase 'M' character; so the proportions of the uppercase M piece would have been square, known as the 'Em square'. It is the size of the Em that was used to denote the point size of metal type. So in 10 point type it is the Em that is 10 points (see below).
 
<img src="images/em-metal-type.svg"/>


In digital type the Em is a digitally defined amount of space. In a typical Open Type postscript font, the UPM size, or the em, is usually set at 1000 units. In TrueType fonts the UPM is normally set at 1024 or 2048.

When the font is used to set type,
the em, i.e. the 1000 units, are scaled to the desired point size. This means that at 10 pt type, the 1000 font units are scaled to 10 pt.

So if your uppercase H
is 700 units high,
it will be 7 pt high at 10 pt type.


Setting up in Glyph Window
With the knowledge that your font is using a 1000, 1024, or 2048 UPM, you need to set up the drawing of your glyphs to ensure that aspects of your typeface fit adequately into that UPM square.

the Baseline
<img src="images/baseline.png" />

the Cap Height
<img src="images/capheight.png" />

the x-height
<img src="images/xheight.png" />
