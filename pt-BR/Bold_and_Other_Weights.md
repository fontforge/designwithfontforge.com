---
published: true
layout: bookpage_pt-BR
weight: 54
category: workflow
title: Bold e Outros Pesos
---

When we talk about the style "bold," we are really talking about a broader variable, which is weight. Weight can include anything from very very thin hairline letters to enormously heavy letters. This variable is used in text typography to create strong separation between bodies of text, and it is used in graphic design either to draw attention to a word or short text through contrast, or to give text a specific feeling.

While you may want to do a wide range of things with weight it is likely that your first experience with adjusting weight will be to try to create a bold to accompany your regular text weight.

Because you are using FontForge you have a distinct advantage. Unlike many font editing programs, the results you get from FontForge style filter may actually be suitable for use &mdash; moreso than the ones you would get in commercial type design software. This is because the algorithm it uses is exceptionally sophisticated.

Creating a bold version of a font can be rapidly approximated by running a filter called <em>Change weight</em> (which you will find in "_**Element**&nbsp;⇨&nbsp;**Styles**&nbsp;⇨&nbsp;**Change&nbsp;Weight**_" menu) to add weight to your glyphs.

The automatic nature and relatively high speed of this process makes it ideal for testing what weight you may want for your bold. You may want to try running this filter several times and save several versions to compare in text next to your regular. That said, you may still need to either alter the result further after running the filter, or manually adjust individual glyphs in order to get a result which is satisfactory.

It is also worth remembering that glyphs which do not have a density of strokes (such as 1, i, l, I, L, j and J) may need to be heavier, while glyphs which do have a density of strokes (such as a, e, g, x, B, R, 8, and &amp;) will need to be less heavy than the other glyphs.

## Font interpolation

FontForge does have a function to interpolate between separate fonts (see "_**Element**&nbsp;⇨&nbsp;**Interpolate&nbsp;Fonts**_"). Font interpolation is a technique that can be used for creating intermediate weights from two other weights. Therefore one way of deciding on the weight of your bold is to create a bold which is definitely heavier than you need, then to interpolate several different weights between this overly bold design and your regular.

Using this technique you can more rapidly find the weight you feel is most appropriate for your project. The same technique can be applied to help decide on even heavier weights such as the "heavy" and "black," as well as lighter ones like "book" and "thin" styles. You can also set negative values on interpolation; for example, you will get a "bold" style if you interpolate a "regular" with "thin" at -50%.

By this logic, it may seem like the best and most efficient way of making a regular weight and all the other weights you may need, would be to make a very thin and a hyper-bold font, then generate everything you need from these. However, the result of that approach is likely to be excessively bland. Instead, it is often the case that each significant change in weight will require its own master design from which other middle weights can be made.

## Table of Weights

A list of some commonly used values and naming conventions

| Value | dev.w3.org  | Google     | os2 IBM/Microsoft |
|-------|-------------|------------|-------------------|
| 100   | Thin        | Thin       | Thin              |
| 200   | Extra Light | ExtraLight | Extra-Light       |
| 300   | Light       | Light      | Light             |
| 400   | Normal      | Regular    | Normal            |
| 500   | Medium      | Medium     | Medium            |
| 600   | Semi Bold   | SemiBold   | Semi-Bold         |
| 700   | Bold        | Bold       | Bold              |
| 800   | Extra Bold  | ExtraBold  | Extra-Bold        |
| 900   | Black       | Black      | Black             |

References:
* http://dev.w3.org/csswg/css-fonts/#font-weight-numeric-values
* https://fonts.google.com/noto/specimen/Noto+Sans?preview.layout=grid&stroke=Sans+Serif
* https://learn.microsoft.com/en-us/typography/opentype/spec/os2#usweightclass

## Further reading

* [On Font Weight](http://bigelowandholmes.typepad.com/bigelow-holmes/2015/07/on-font-weight.html)
* [Commonly used names for CSS font-weight values](https://gist.github.com/lukaszgrolik/5849599)
