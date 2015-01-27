---
published: true
layout: bookpage
weight: 20
category: workflow
title: Font Info & Metadata
---

## Element, Font Info

The Font Info window is ubiquitous in font editors, and FontForge closely follows the OpenType Specification. 
It may appear cryptic at first, but using it can help learn some familiarity with the OpenType format, and in turn reading about the OpenType format makes the dialog more approachable. 

<img src="images/info_ps_names.png"/>

## Family Naming

Microsoft works hard to ensure that a program written for a previous version of Windows will continue to run on the latest versions, enticing people to upgrade. This means that the basic TrueType font model introduced in Windows 3 is still with us, and Windows does not support font families with more than the 4 basic styles (Regular, Italic, Bold, Bold Italic.) 

This means for font designers that our font family names should be set up in a way that all our fonts can be used in all operating systems. The OpenType format allows for this, complementing the Family and Style Name values with "Preferred Family Name" and "Preferred Style Name" values that will take precedence in OpenType-aware software.

Here is a table, based on information shared by Polish font expert Adam Twardoch:

<iframe src="https://docs.google.com/spreadsheets/d/1ckHigO7kRxbm9ZGVQwJ6QJG_HjV_l_IRWJ_xeWnTSBg/pubhtml?gid=0&amp;single=true&amp;widget=true&amp;headers=false">Font Naming Table</iframe>
