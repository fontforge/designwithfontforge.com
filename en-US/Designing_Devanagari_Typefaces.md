---
published: true
layout: bookpage
weight: 92
category: workflow
title: Designing Devanagari Typefaces
---


_Thanks to Erin McLaughlin and Neelakash Kshetrimayum for contributing ideas to establish this page_

Designing a new and original Devanagari ([wikipedia](http://en.wikipedia.org/wiki/Devanagari)) typeface follows a process much like the process for a new and original Latin. The unique benefit of libre of libre fonts is that they can be modified and reused for new purposes that their initial creators never thought of - so you can design a Devanagari and use an existing Latin font to go with it. 

## Work Breakdown Structure

In any typeface design project, its a great idea to sketch out a Work Breakdown Strucutre. Your could design sets of glyphs in the following order:

* consonants (36)
* independent vowels (28)
* vowel maatras
* word space(s)
* Devanagari numerals (10)
* Latin numerals (new, or if already present then adjusted to work within pure Devanagari text)
* nukta composites
* half-forms
* conjuncts (unique ligature glyphs - this is where most of the time goes)
* "I" vowel maatras of differing lengths
* Devanagari punctuation, marks, and symbols
* Latin punctuation, marks, and symbols (new, or adjusted if already present)
* Latin letters

In the earliest stages, aside from some "control" characters to determine shape/spacing, it is also useful to use some "height extremes", low and high, to determine inter-line spacing.

For someone very experienced, it is possible to design the initial Light and Bold weights of a Devanagari typeface in around 2 to 3 months. 

Here is a sample schedule for an interpolated family of 9 weights, upright and slanted, of a somewhat simple 'sans' design:

* week 1 - Establish design, and matching weight to Latin in Regular & Bold with ttfautohint — 10 glyphs each, total 20
* week 2 - Get native reader feedback and design the base unicode glyphs in both Regular and Bold — around 100 glyphs each
* week 3 - Get native reader feedback, refine and add more conjuncts
* week 4 - Get native reader feedback, refine and add more conjuncts
* week 5 - Get native reader feedback, refine and add more conjuncts 
* week 6 - Finalisation of Regular's conjuncts, OpenType code and mark positioning, vowel signs etc - now around 400 glyphs per style
* week 7 - Finalisation of Bold with native reader feedback
* week 8 - Refinements, Kerning, testing with native reader feedback — approx. 620 glyphs per style
* week 9 - Interpolation of weights, design of slanted/italic in both Regular and Bold
* week 10 - Interpolation of slanted, general refinement
* week 11 - General refinement of spacing, kerning & testing in all styles
* week 12 - Finalisation

## Useful Resources

### Devanagari Pen Angle

If you're new to Devanagari script, it's important to become aware of traditional calligraphic pen stress, which is different than in Latin. Here's a quick demonstration of the stroke angle, and how curves were traditionally weighted. Your design will be more successful, and appear less "Latinized", if you draw your curves according to these weight principles, rather than cutting-and-pasting Latin alphabet letter parts.

<iframe width="560" height="315" src="//www.youtube-nocookie.com/embed/_P-Ty512SyA?rel=0" frameborder="0" allowfullscreen></iframe>

### Adhesion Text

The [Adhesion Text Devanagari](http://www.adhesiontext.com/devanagari/) is a special version of the a tool built by Miguel Sousa to make dummy text comprised only of the words possible to write with the glyphs you have already drawn. 

Insert the glyphs (अआईईउऊ etc) that you've drawn, and out will come some sample words for you to use in proofs.

## Pooja's Type Tools

[Pooja Saxena's Type Tools](https://anexasajoop.github.io/devanagari-type-tools) (with [sources on github!](https://github.com/anexasajoop/devanagari-type-tools)) also generate test texts.

## Impallari Testing page

[Pablo Impallari's Devanagari Testing Page](http://www.impallari.com/testing/devatest.php) (with [sources on github!](https://github.com/impallari/font-testing-page/)) provides some ready-made testing layouts, and you can drag and drop your OTF or TTF right into the page to load it.
