---
published: true
layout: bookpage
weight: 90
category: workflow
title: 正誤表 Errata
---


# Memorandum of Errata

While preparing the Japnese version of "Design with FontForge", some errors are noted. Below are memo of some of them. (as of Feburuary 2024)

|Chapter |Para #|Error Phrases |Correction idea (should be)|

## 17. Punctuation and Symbols
&para; #5
+ The shape of the comma can vary to an almost <b>suprising</b> degree.
> + should be: <I>... **surprising** ...</i>

## 19 Diacritics and Accents 

### Creating anchor points for placing diacritic marks

&para; #23
+ FontForge uses lookup features <b>know</b> as ‘mark-to-base’for creating and positioning anchor points.
> + should be:　 <i>... <b>known</b> as ...</i>

### Control of Anchor Classes
&para; #28
+ FontForge also contains a useful graphical interface for controlling the position of whole classes of anchor points, enabling the user to fine-tune the position of, for example, all the acute accents at once in a font, or all the anchors in a class contained in characters that reference the lowercase ‘e’.
> + **Is the folowing sentence after the above <i>duplicated</i>** ? : <i>In the examples below we can see how to use this graphical interface to fine-tune the position of all acute accents in a font and a class of anchors across all characters that reference the lowercase ‘e’ glyph.</i>

## 20. Numerals

### Ranging or old style numerals

+ Section Header "Ranging or ..." meant "<i><b>Ranging of</b></i> ..."? In this Japanese version, this header is traslated as "Range of (Various) old style numerals".

## 22. Italics

### Italic construction

+ The term “italic” does not, in fact, refer to the slant seen in in many italic designs, but <i><b>instead refers instead</b></i> to a style of writing which became popular in 14th century Italy.
> + the word "<i><b>instead</b></i>" is redundant.

## 23. Spacing, Metrics and Kerning

### A basic approach to spacing

+ .... Once you are happy with the spacing of your string of ‘o’ characters, introduce the ‘n’ character from your font (<i><b>see below</b></i>) and then look to adjust the side bearings of the ‘n’ so that its spacing fits into the balance of the string of ‘o’ characters (<i>*<b>see below</b></i>). ...
> + Probably, either of these "<i><b>see below</b></i>" is redundant.

### Kerning

+ .... In the examples below, we can see that, without kerning, the spacing between the letter pairs ‘To’ and ‘<i><b>Va</b></i>’ are too wide, ....
> + '<i><b>Va</i></b>' should be '<i><b>Av</i></b>'.

### Kerning with Classes

*This section in English version is diferenct in its contents from those in French and Chinese version*. Was the current English version updated from the one French/Chinese versions are based on?

Some explanations are ambiguous/uncertain about what they are talking about. Some examples are;

+ If you chose classes you will be presented with a following dialog where you can create your classes. **If you want to kern references along with the originals, choose classes.** 

+ But know that some experienced users don’t like it, and do all kerning as above: Element, Font Info, Lookups, GPOS tab, expand by hitting the plus sign, double-click the subtable.


## 24. Making Sure Your Font Works, Validation

### First things first: test for required features

+ In the “Refs” tab, select <i>**all six tests**</i>. 

> + should be: "..., select all <i><b>seven</b></i> tests." In the FontForge 2023.01.01 edition, the Refs tab of "Find Problem" window has seven options (and the 7th option is not translated into Japanese yet in the Japanese version - probably added recently?).

### Make life easier for your users: test for good behavior

+ In the "Paths", .... Modern font formats strongly suggest that ... or on the page. <i><b>check will look for missing extrema points</b></i>. ...

> + The last sentence above seems to be "redundant" as it says the same thing as the sentence "The first looks for points at the extrema ...."　OR add "This" to make it a complete sentence "This check will look for ...."

### Help yourself: run tests that can aid design

+ The <i><b>Edges near horizontal/vertical/italic</b></i> test in the “Paths” tab looks for line segments that ....
> + <i>should be:</i>  "<i><b>Edges near horizontal/vertical</b></i>" without the "/italic"? The "Find Problems" window in 2023 FontForge does not list the option by this title with "/italic" (at least in Japnese version).

## 25. The Final Output, Generating Font Files

### Check your metadata

+ Fonts, like all creative works, need to have a license, so users will know what they are and are not allowed to do. FontForge has a button in the “<i><b>TTF Nmes</b></i>” tab labelled “Add SIL Open Font License.”...
> + <i>should be:</i>  ... "<i><b>TTF n<u>a</u>mes</b></i>" ...

## 26. When Things Go Wrong With FontForge Itself

### Paying for Support

+ <i><b>FreedomSponsors</b></i> offers a transparent system for paying FontForge developers to fix issues you care about in a timely fashion.
> + Not sure if the link (website) od the above site is still working or not.

## 27.  Designing Devanagari Typefaces

### What to Do First

+ Ideally, these should stack below your lowest vertically-stacking conjunct, like the example **on the left** (Lohit, which doesn’t quite vertically fit, is **on the right**):

> + <i><b>Should be</b></i>: it seems that the link to the font examples (on the left and the right of something) is missing after **:** ?????

### Articles

+ Vaibhav Singh's MATD **disertation**

> + <i><b>Should be</b></i>: Vaibhav Singh's MATD **dis<u><i>s</i></u>ertation**

## 28. Importing Glyphs from Other Programs

### How to prepare

+ By default FontForge will set up your baseline at `y=800`. In the FontForge coordinate system, the baseline is at their `0` point on their vertical <i><b>access</b></i>.
> + <i><b>Should be</b></i>: ... on their vertical  <u><i><b>axis</b></i></u>?

+ When drawing the glyph, it is common to use relative coordinates. Start the glyph with `<path d="M Xvalue,Yvalue`. ...
> + ?? : Not sure what the sentence "**Start the glyph with `<path d="M Xvalue,Yvalue`.**" meant.