---
published: true
layout: bookpage
weight: 75
category: Appendices
title: Importing Glyphs from Other Programs
---

It is possible to draw glyphs in a general purpose illustration application (Inkscape, Adobe Illustrator, etc) and import them as EPS or SVG. 

## Hand-coded SVG

#### How to prepare

* The SVG file does need `viewBox="0 0 1000 1000"`

* Width actually doesn't matter, as long as it is wider than your glyph. But the height at 1000 is important for easiest import.

* `y=0` will be the ascender line and `y=1000` will be the descender line.

* (There may be a few glyphs that go beyond those lines, perhaps FontForge will do the right thing but we haven't tested it.)

* By default FontForge will set up your baseline at `y=800`. In the FontForge coordinate system, the baseline is at their `0` point on their vertical access.

* To set the baseline where you want it in FontForge, take the y coordinate for your baseline in SVG. That will be the FontForge vertical point for the ascender line in their coordinate system. (1000 - y) for the descender. Go to `Element, Font Info` and in the General menu, place the ascender value in the "Ascent" input and the decender in the "Descent" menu. Both will be positive. The Em Size should remain at 1000 (as that is the height in SVG units)

* When drawing the glyph, I like to use relative coordinates. So I start the glyph with `<path d="M Xvalue,Yvalue`. If I can draw the glyph starting at a point all the way on the left, then XValue will be the default LeftBearing that FontForge uses. You can adjust that easily after glyph import and may need to anyway after testing the font. The Yvalue, when I can start drawing from the baseline, it's nice to use that baseline value for Yvalue.

* Always finish the path d attribute with a z. It will import without it, but the glyph won't display right in the main window until you restart fontforge if you forget to put a z after the last point in the path.

* When drawing holes (like for letter P) don't start a new path node, just use a z at end of the first path and start new with mNewX,NewY to then start drawing the hole. Use the attribute fill-rule="evenodd" for the path and it will work right.

#### Workflow

Use a web browser to render the SVG you are working on. You can use a file called "template.svg" that is 1200 by 1200 but renders at 800 by 800 so that it doesn't scroll in the browser window.

In that template, draw guidelines at `y=100, y=1100, y=(100 + {baseline, capheight, etc.}, x=100, x=1100`

Then import the SVG glyph you are working on into that document with `<image xlink:href="LC_p.svg" x="100" y="100" width="1000" height="1000" />`

You can now hand-code you letter in one window, and refresh the browser in the other to see it drawn on top of the guidelines. 


## Custom Glyph Lists

1. Create a `namelist.txt` file, perhaps using a spreadsheet to list unicode codepoints and glyph names. For example:

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

For glyphs without a Unicode point, use a codepoint of -1, such as in the last line of the above example.

Then load FontForge and go to `Encoding, Load NameList` and then use `Rename glyphs` (Since `Load NameList` only
adds the custom namelist to the set of options available in subsequent rename commands.)  
