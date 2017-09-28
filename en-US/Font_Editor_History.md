---
published: true
layout: bookpage
weight: 82
category: Appendices
title: Font Editor Tool History
---

Adam Twardoch offered a brief history of type tools on the [fonttools mailing list](https://groups.google.com/d/topic/fonttools/2gghQU7NbZU/discussion) in September 2017, which with permission is added to this book and can be freely edited and expanded.

In 1975, the Hamburg-based company URW published Ikarus, the first computerized system for designing outline-based fonts. Ikarus evolved for quite a few years. Peter van Blokland ported it to the Mac as Ikarus M. The successor of URW, URW++ together with Dutch Type Library continued development of Ikarus based-tools under the DTL FontMaster brand. There some very capable apps in the package though the user interface of some may be a bit dated.

In 1985, Altsys, a Texas-based company, developed Fontographer, the first Macintosh app that allowed drawing with Bézier curves, and the first PostScript Type 1 font editor. Altsys later extended Fontographer into Freehand, a full-blown vector graphic editor, then was acquired by Macromedia and later by Adobe.

The development of Fontographer stalled for a decade. Portions of the software ended up as part of Flash, Freehand was abandoned but Fontographer was sold to FontLab.

Around 1990, FontLab was formed as a U.S.-Russian collaboration. It developed the FontLab font editor and a few other tools (TypeTool, ScanFont, TransType).

Also in the early 1990s, Peter van Blokland, Erik van Blokland and Just van Rossum created RoboFog, an extended version of Fontographer 3.5 that included support for Python, a scripting language created by Just’s brother Guido van Rossum.

One of the engineers who originally created the TrueType font format at Apple, and the inventor of the TrueType hinting language, Sampo Kaasila, started his own company Type Solutions, later acquired by Bitstream and ultimately by Monotype. Among other things, he created TypeMan, an app for TrueType hinting. The app was acquired by Microsoft and extended by Beat Stamm to become VTT, the visual TrueType hinting tool, which is available for free.

In 2001, FontLab 4.0 added support for Python, and a few years later the RoboFog team created a Python library called RoboFab which allowed running scripts written for RoboFog to be run within FontLab.

All these apps were commercial and ran mostly on Mac OS or Windows.

In the late 1990s, Just van Rossum wrote fontTools/TTX, a pure-Python opensource parsing and manipulation toolkit for OpenType fonts.

In the early 2000s, an ex-Netscape programmer George Williams started developing FontForge (originally under a different name), the first opensource GUI font editor. It borrowed many UI ideas form FontLab and Fontographer but also included many original ideas and had also remarkably complete support for various font formats and their technical aspects. It also included Python support.

Also since the late 1990s, David Turner and Werner Lemberg have been developing FreeType, an opensource font rasterization library.

Also in the early 2000s, Adobe published a C- and Python-based toolkit, the AFDKO, which has been used by pretty much all GUI font editors to build CFF-flavored OpenType fonts. Originally proprietary, AFDKO is now opensource except a few bits.

FontLab published FontLab Studio 5 for Mac OS X and Windows, a GUI font editor that had been used to create the majority of currently shipping OpenType fonts. It included a simplified UI for TrueType hinting inspired by VTT, Python and AFDKO support and tools for both type design and technical font work.

Adobe also recently contributed their rasterization and hinting code to FreeType, and Werner Lemberg wrote ttfautohint, a very able tool to create TrueType hinting instructions automatically.

Since the late 2000s, the group behind RoboFog and RoboFab, along with Tal Leming and Frederik Berlaen, have been working on UFO, an XML dialect to describe source font data, and various tools which were chiefly based on RoboFab and fontTools/TTX.

That work resulted in more cool UFO-based apps, mostly for Mac OS X: Metrics Machine, Prepolator, Superpolator and finally RoboFont — a quite slim Python-based GUI font editor inspired by bits of Fontographer, RoboFog and FontLab, with a minimal feature set but infinitely extensible with plugins. Many of the plugins and underlying libraries that power RoboFont, Superpolator and the other UFO apps are opensource, while the actual apps are commercial.

A notable opensource project from the UFO community is Erik van Blokland’s MutatorMath library and the designSpace format, both aiding font interpolation and building of variable fonts. Other libraries from this community are defcon (for dealing with UFO-based font projects in GUI apps), ufoLib (for dealing with UFO file structures), and most recently fontParts (a replacement for the dated RoboFab).

A few years ago, Adrien Tetar had started working on TruFont, an opensource editor inspired heavily by defcon and RoboFont but written in PyQt, yet this work has stalled.

Also a few years ago, a German developer Georg Seifert has started developing Glyphs, a GUI font editor for Mac OS X which is also extensible by plugins and quite popular. It also includes Python support.

FreeType originally had some minimal support for processing OpenType shaping (applying features to text for a given font and getting the resulting series of glyphs and their positions) called FT Layout. That code had been taken by the Qt and Pango projects and extended, and later Behdad Esfahbod turned it into HarfBuzz, which is now a feature-complete opensource OpenType Layout library used by many apps and platforms, including Firefox, Chrome and Android.

Behdad (who is now part of the Google i18n team) also took over maintenance of fontTools/TTX and along with a number of contributors extended it greatly to support virtually all of OpenType.

The FontLab team has been for a while developing FontLab VI — a complete rewrite of the GUI font editor for macOS and Windows that makes heavy use of many of the components that have been created by the community: Python, RoboFab, fontTools/TTX, AFDKO, UFO, designSpace, HarfBuzz, FreeType, ttfautohint, MutatorMath, and also combines the strongest parts of FontLab Studio 5, Fontographer, ScanFont and TransType.

The Google i18n team has developed glyphsLib, an opensource parser for the Glyphs font format, and fontmake that allows conversion from Glyphs and UFO files into static or variable TTF fonts, utilizing many of the components opensourced by the community. The fontTools/TTX package has been extended to include a font subsetter, a feature compiler (feaLib) that can serve as an alternative to AFDKO, and varLib that helps building variable fonts.

There is also a flurry of JavaScript-based font-related tools and libraries (opentype.js, fontkit, ufo.js, Metapolator etc.) but it seems that their development is somewhat separate from the C/Python world.

This probably omits a few important bits but hopefully gives some orientation.

Check out https://twardoch.github.io/fontsurgery-tools/ which includes links to many of the opensource libs.
