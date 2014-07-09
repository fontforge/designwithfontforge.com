---
published: true
layout: bookpage
weight: 92
category: workflow
title: Designing Devanagari Typefaces
---


_Thanks to Erin McLaughlin and Neelakash Kshetrimayum for contributing ideas to establish this page_

Designing a new and original Devanagari ([wikipedia](http://en.wikipedia.org/wiki/Devanagari)) typeface follows a process much like the process for a new and original Latin. The unique benefit of libre of libre fonts is that they can be modified and reused for new purposes that their initial creators never thought of - so you can design a Devanagari and use an existing Latin font to go with it. 

## Devanagari Glyphs

Devanagari fonts contain these different types of glyphs:

* consonants (36)
* independent vowels (28)
* vowel maatras
* word space(s)
* Devanagari numerals (10)
* Latin numerals (new, or if already present then adjusted to work within pure Devanagari text)
* nukta composites
* half-forms
* conjuncts (unique ligature glyphs)
* "I" vowel maatras of differing lengths
* Devanagari punctuation, marks, and symbols
* Latin punctuation, marks, and symbols (new, or adjusted if already present)
* Latin letters

Consult the ([Devanagari Unicode page](http://www.unicode.org/charts/PDF/U0900.pdf)), as well as the ([Microsoft Devanagari OpenType Font Development page](http://www.microsoft.com/typography/OpenTypeDev/devanagari/intro.htm)) to learn more about these glyphs and how the Indic shaping engine works.

## Work Breakdown Structure

In any typeface design project, its a great idea to sketch out a Work Breakdown Structure. 

For someone very experienced, it is possible to design the initial Light and Bold weights of a Devanagari typeface in around 2 to 3 months. 

Here is a sample schedule for an interpolated family of 9 weights, upright and slanted, of a somewhat simple 'sans' design:

|Week|Goal|Glyphs|
|--:|:--|--:|
|1|Establish design, and matching weight to Latin in Regular & Bold with ttfautohint|10|
|2|Get native reader feedback and design the base unicode glyphs in both Regular and Bold |100|
|3|Get native reader feedback, refine and add more conjuncts|200|
|4|Get native reader feedback, refine and add more conjuncts|300|
|5|Get native reader feedback, refine and add more conjuncts|400|
|6|Finalisation of Regular's conjuncts, OpenType code and mark positioning, vowel signs etc|500|
|7|Finalisation of Bold with native reader feedback|500|
|8|Refinements, Kerning, testing with native reader feedback — approx. 620 glyphs per style|600|
|9|Extrapolation and clean-up of Thin and Black weights, generation and clean-up of slanted styles|600|
|10|Interpolated styles refinement|600|
|11|General refinement of spacing, kerning & testing in all styles|600|
|12|Finalisation|600|

## What To Do First

When designing a Devanagari and Latin typeface, its important to start by draw the Latin alongside the Devanagari. In the earliest stages, in addition to the "key" design glyphs to establish the personality of the typeface through fundamental shapes and spacing(which in Latin may be 'adhesion' or 'videospan') it is good to design the "height extremes", the lowest and highest glyphs. 

Girish Dalvi wrote in his PhD,

> Through the results of this study we can deduce that the ten letters अ इ ए ख त भ द ध थ ष can almost capture all the formal properties of remaining Devanagari letters. Within these letters the letters अ इ ख भ द ध ष are most critical as they define features for the majority of the letters. We can hence suggest that by designing these letters first; the process of Devanagari font design can be simplified for students well as type designers as the remaining letters can be derived from these ones.

Erin McLaughlin suggested these glyphs as an initial progression:  **पाव + किमीनुफू + भरसगदह + र्मों ड्डू (height extremes) + यथधआछड … continue character set**

(Focus on the "Au" vowel sign + reph + anusvara combo!, the Ma is just there for posterity.)

Note that in the Lohit character set, the lowest glyphs are these "low" forms, meant to go below characters that descend very far below the baseline:

TODO: Add image of vattu+U, vattu+Uu, U, Uu, and subscript V (for conjuncts)

(Vattu is the below-base form of reph. See the [Microsoft terminology](https://www.microsoft.com/typography/otfntdev/indicot/terms.htm) page for more details)

Ideally, these should stack below your lowest vertically-stacking conjunct, like the example on the left  (Lohit, which doesn't quite vertically fit, is on the right):

These glyphs allow you to determine the vertical metrics, and how to scale the two writing systems to work together. Adobe publishes very large type families that cover very different orthographies. These are split into families with shared general proportions; Myriad Pro has Latin, Greek and Cyrillic, but the Hebrew and Arabic designs are packaged as separate families which include **modified** Latins. 

Here is Myriad Pro Latin and Myriad Arabic juxtaposed:

<img src="images/myriad_pro_vs_arabic.png" />

Its a nice touch that the cap height of the Latin in Myriad Arabic is the x height of the Myriad Pro Latin!

## Spacing approach

Designing Latin fonts typically involves a series of spacing strings like this:

> HHxHOHOxOO
> nnXnonoXoo

Where the X represents the letter you are focused on spacing, and the concept is looking at this letter next to a somewhat flat-sided character and a round character. 

Pa, and Va or Da are Devanagari equivalents:

> पपXपवपवXवव
> पपXपदपदXदद

When just beginning a project, start with filling a page entirely with Pa in order to get the right balance of stroke thickness, counter size, and spacing. 

> पपपपपपपपपपपपपपपपपपपपप 

Once the Pa has the right "color", you can begin adding these other basic, common characters:

> पपपवपपपपपवपववपपव (va, randomized)
> पपपापपपपापपाप (Aa maatra, randomized)
> पपपदपपपपपदपददपपद (da, randomized)

Then, you can begin using the spacing strings shown above, in order to add more glyphs:

> पपरपदपदरदद
> पपकपदपदकदद
> पपलपदपदलदद
> पपपीपदपदपीदद

and so on!

You'll want to look at these in a long list like that, so you can compare from one glyph to another, as you scroll downward - both on screen and in print.

## Useful Resources

### Article: Designing a Devanāgarī text font for newspaper use 

Yashodeep Gholap, an independent type designer and calligrapher from India, wrote [Designing a Devanāgarī text font for newspaper use  (PDF)](http://www.typoday.in/2012/spk_papers/yashodeep-gholap-typographyday2012.pdf)

### Lohit2 Devanagari

Lohit2 Devanagari can be used as a base for new OFL fonts by using its Glyph List and OpenType Layout code. It is available as [original FontForge sources](https://github.com/pravins/lohit2/tree/master/devanagari) or as a [UFO zip download](https://github.com/frank-trampe/lohit2/archive/master.zip)

### OpenType Layout

[Microsoft Devanagari OpenType Font Development page](http://www.microsoft.com/typography/OpenTypeDev/devanagari/intro.htm)

### Devanagari Anatomy

Professor Girish Davli of IIT Bombay IDC (comparable to the USA's MIT Media Lab) published this [Devanagari Anatomy article (PDF)](https://web.archive.org/web/20130913220315/http://www.idc.iitb.ac.in/resources/dt-jan-2009/Anatomy%20of%20Devanagari.pdf)

If you're new to Devanagari script, it's important to become aware of traditional calligraphic pen stress, which is different than in Latin. Here's a quick demonstration of the stroke angle, and how curves were traditionally weighted. Your design will be more successful, and appear less "Latinized", if you draw your curves according to these weight principles, rather than cutting-and-pasting Latin alphabet letter parts. <br /><iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/_P-Ty512SyA?rel=0" frameborder="0" allowfullscreen></iframe>

The [Devanagari Unicode page](http://www.unicode.org/charts/PDF/U0900.pdf) shows the basic letters, but not the conjuncts

### Testing Tools

[Pablo Impallari's Devanagari Testing Page](http://www.impallari.com/testing/devatest.php) (with [sources on github!](https://github.com/impallari/font-testing-page/)) provides some ready-made testing layouts, and you can drag and drop your OTF or TTF right into the page to load it.

[Pooja Saxena's Type Tools](https://anexasajoop.github.io/devanagari-type-tools) (with [sources on github!](https://github.com/anexasajoop/devanagari-type-tools)) generates test texts for letter combinations.

The [Adhesion Text Devanagari](http://www.adhesiontext.com/devanagari/) is a special version of the a tool built by Miguel Sousa to make dummy text comprised only of the words possible to write with the glyphs you have already drawn. Insert the glyphs (अआईईउऊ etc) that you've drawn, and out will come some sample words for you to use in proofs.

The Huerta Tipografica's [Devanaguide](http://devanaguide.huertatipografica.com/) is an open source tool to see and compare different devanagari fonts. It also allows you to type a text and preview it in all the fonts at the same time.

### Forum Discussions

Typophile

* [Adobe Devanagari](http://typophile.com/node/95460)

Google Fonts Directory Discuss

* [A note on conventions for the placement of shoulder line, descenders, ascenders and so forth in relation to the latin?](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/TaX0NKHket4)
* [Starting from Lohit2](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/VAhs5MnjZ30) and [pdf](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/_3gtTalzKUQ)
* [Adobe Glyph Lists](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/q8CQHVxVZ0Y)
* [rVocalic and rrVocalic](https://groups.google.com/forum/#!topic/googlefontdirectory-discuss/eYmmBQENBb8)
