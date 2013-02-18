---
layout: bookpage
weight: 29
category: workflow
title: Spacing, metrics, and kerning
---

The spaces between characters are an important, integral part of the design of a font. Designing a font's letter spacing should be carried out as an integral part of the whole process of designing a font. Good spacing is necessary for a font to function well.

In FontForge, the Metrics Window allows you to design the metrics of your font, alter the spacing between them, and test how glyphs look together. Metrics Windows can be opened from the 'Window' menu, or by using the Control-k command.

The space between any two glyph has two components; the space after the first glyph, and the space before the second glyph. These spaces between glyphs are composed of the 'side bearings' from each glyph pair. Each glyph has a left side bearing and a right side bearing, in the example below of the lowercase 'a' of 'Open Sans' the right sidebearing has a value of 166 units, and the left sidebearing has a value of 94 units.

<img src="images/sidebearings.png" alt="">

## <strong>Basic Functions of the Metrics Window</strong>

The side bearings of characters can be edited in FontForge's Metrics Window in 5 ways;

- manually dragging each side bearing boundary.

- manually dragging a character. Note though that dragging a character will only effect the value of the left side bearing.

- side bearing values can be altered by directly editing their value in the metrics tables of the Metrics Window.

- the value of side bearings can be incremented / decremented by using the keyboard.

- using commands in the Metrics Window's Metrics menu.

<strong>Adjusting Side Bearing Values with the keyboard.</strong>

One method of adjusting metric values quickly and accurately in FontForge is by using the 'up', 'down', 'left' and 'right' keys of a keyboard. The 'up and 'down' keys are used to incrememt / decrement values and 'alt+up', 'alt+down', 'alt+left' and 'alt+right' are used for navigating around the different value fields of the Metrics Window.

## General Principles

As a general principle symmetric characters such as 'A' 'H' 'I' 'M' 'N' 'O' 'T' 'U' 'V' 'W' 'X' 'Y' 'o' 'v' 'w' 'x' will have symmetric side bearings, e.g. a the left and right side bearings of an 'H' will be the same value. Note though that this is not a hard and fast rule, but a general one.

As you space the characters that you design, you should trust your eyes. The bottom line is to 'design - look - adjust - look again'.

For the absolute beginner; do not assume that reliable results are achieved by relying on the measured space. For example, whilst the measurements between two characters may be unequal, the eye can see them as equal. An obvious example of this can be seen when attempting to space the characters 'H' and 'O'. So for the example below,  the side bearings of the 'H' and 'O' are equal, but look unequal. In the lower line, the side bearings are not equal but the spacing appears balanced.

<img src="images/hoohooo2.png" alt=""><img src="images/hoohooo1.png" alt="">



## <strong>Metrics Menu Commands for editing metrics</strong>

<strong></strong>'Center in Width' - This centers the current glyph within its current width.

'Window Type' - FontForge's Metrics Window can be set to behave in 2 ways for metrics adjustment;

- 'Advance Width Only' - in this mode metrics view may only be used to adjust the advance widths of glyphs.

- 'Both' - In this mode metrics view will adjust either the advance width or kerning values.

<span>'Set Width' - this command allows you to change the width of the current glyph.</span>

<span>'Set LBearing' - allows you to change the left side bearing value.</span>

<span>'Set RBearing' - allows you to change the lright side bearing value.</span>

## <strong>A basic approach to spacing</strong>

The following method is designed to get you started effectively towards designing the metrics of your font.

Starting with a string of lowercase 'o' characters in the metrics window, the left and right sidebearings can be adjusted until the spacing of the characters looks and feels right. One way to look for this 'rightness' is to look for the whitespace between the 'o' characters to balance the whitespace inside the 'o' characters. In general, with the exception of slanted or italic fonts, the left and right side bearings of a lowercase 'o' should be of equal value. Once you are happy with the spacing of your string of 'o' characters, introduce the 'n' character from your font (see below) and then look to adjust the side bearings of the 'n' so that it's spacing fits into the balance of the string of 'o' characters (see below). Note that due to the nature of the way our eyes see, the right side bearing of an 'n' will allways be a smaller value than the left side bearing, and the side bearings of the 'o' will be smaller than the side bearings of the 'n'.

<img src="images/snapshot1_1.png" alt="">

 Once both the 'n' and 'o' are adequately spaced their sidebearings can be used to create the sidebearings for an array of other characters, for example;

- the right side bearing of the 'o' can be used for the right side bearing of the 'c', 'd', 'e', and 'q'.

- the left side bearing of the 'o' can be used for the left side bearing of the 'b' and 'p'.

- the right side bearing of the 'n' can be used for the left side bearing of the 'h' and 'm'.

- the left side bearing of the 'n' can be used for the left side bearing of the 'b', 'h', 'k', 'm', 'p' and 'r'.

Note - the above should be used as a guide only that can be used as a super effective starting point for finding correct values for these side bearings.

<img src="images/snapshot2.png" alt="">

From here it makes sense to then space the rest of the side bearings of the lowercase characters against strings of 'n' and 'o' characters, as seen in the diagram above. Again, trust your eyes to reach correct balance of characters.

## <strong>Uppercase characters</strong>

Uppercase characters can be spaced using the same principles as above. For example, start with the string 'Hooooo' and adjust the right side bearing of the 'H' untill it feels balanced against the string of 'o' characters. With the left side bearing of the 'H' being equal to the right side bearing, the uppercase 'O' can then be spaced against the 'H' (see below).

<img src="images/snapshot3.png" alt="">

From here all other characters can be spaced against the characters which have already been spaced. It should be noted that this method can be used as a good starting point for spacing a font, but it is likely that more minute fine tuning of spacing will also be needed to achieve higher levels of good letter spacing. Other strings of characters that are usefull in this can be arrays such as 'naxna', 'auxua', 'noxno', 'Hxndo'.

## <strong>Kerning</strong>

<span>Kerning is the adjustment of the spacing between specific character pairs. Kerning enables individual spacing of character pairs that is applied in addition to the spacing provided by a character's side bearings. Common examples of character pairs where kerning is often needed to improve spacing would be 'WA', 'Wa', 'To', 'Av'. In the examples below, we can see that without kerning the spacing between the letter pairs 'T-o' and 'V-a' are too wide, whereas with kerning the space between these character pairs is much more balanced with the feel of the spacing of the rest of the font.</span>

<img src="images/kern1.png" alt=""><img src="images/kern2.png" alt="">



<span>The Metrics Window in FontForge can be used to design both side bearings for and kerning values. Kerning values can be applied to a font in a number of ways in FontForge, 2 of these are shown below, kerning with classes and kerning with individual pairs;</span>

## <strong>FontForge's Metrics menu</strong>

'Window Type' - FontForge's Metrics window can be set to behave in 2 different ways to enable kerning adjustment;<strong></strong>

- 'Kerning Only' - in this mode the metrics view may only be used to adjust kerning.

- 'Both' - In this mode metrics view will adjust either the advance width or kerning values.

'Kern By Classes' - This command provides the user with a dialog to manipulate kerning classes.

'Kern Pair Closeup' - This command provides the user with a dialog from which you can adjust already existing kerned pairs or create new pairs (see below).

<img src="images/kerncloseup.png" alt="" height="686" width="632">

## <strong>Adjusting kerning values with the keyboard</strong>

Just like with adjusting side bearing values, kerning values can be quickly and accurately edited in FontForge by using the 'up', 'down', 'left' and 'right' keys of a keyboard. The 'up and 'down' keys are used to incrememt / decrement values and 'alt+up', 'alt+down', 'alt+left' and 'alt+right' are used for navigating around the different value fields of the metrics window.

## <strong>Kerning individual pairs</strong>

<span>This is the most basic level of creating kerning pairs in FontForge. In the Metrics Window the kerning value between 2 characters can be manually adjusted either by dragging the right-hand character to or from the left-hand character, or by editing the kerning value directly in the metrics table of the window. To change kerning values by dragging characters use the kern-tool handle that appears when the mouse cursor is hovered between 2 characters (see screeenshot below). The kerning value in the metrics table can be edited by manuallly entering values or by incrementing / decrementing the value using your keyboards up / down keys.</span>

<img src="images/mnl-kern.png" alt="">

## <strong>Kerning with classes</strong>

<span>A 'kern class' in FontForge can be created to build groups of characters who will all have the same kerning value applied, so for example a class can be created, let's call it 'o_left_bowl' in which the characters 'o', 'c', 'd', 'e', 'q' will allways have the same kerning value when preceeded by, for example, the character 'T'. The 'T' could also itself be a member of another class that would likely include other characters such as Tcaron and Tbar. Effectively, class kerning can save you a lot of time.</span>

<span>The Element &gt; Font Info &gt; Lookups tab provides an interface to class kerning in FontForge. The same interface is also got at via the<br> It brings up a dialog showing all the GPOS lookups (of which kerning is one) and their subtables. See screenshot below;</span>

<img src="images/kernclass1.png" alt="">

To create a new kerning lookup click on 'Add Lookup' and choose 'Pair Position (kerning)' as the lookup type and give the lookup its own, unique name (see below).

<img src="images/kernclass2.png" alt="">

<span><span>Each set of kerning classes lives in its own subtable. To create a subtable, click on 'Add Subtable'. When you create a kerning subtable you will be asked whether you want a set of individual kerning pairs or a matrix based on classes. If you chose classes you will be presented with a following dialogue where you can create your classes. Note that you can choose to enable FontForge to 'guess' or 'autokern' the kerning values between the classes you are creating in the dialogue. If using FontForge to guess kerning values you will undoubtedly need an amount of trial and error and experimentation, but it can make sense to use the autokern function as a starting point to kerning your font.</span></span>

<span><span><img src="images/kernclass3.png" alt=""></span></span>

<span><span>For example in the screenshot above, 2 classes have been created; one class containing the 'T' character, and one class containing the 'o' character. On clicking 'ok' in the above dialog, you will be presented with the following window where you can fine tune the amount of kerning between these two 'T' and 'o' classes.</span></span>

<span><span><img src="images/kernclass4.png" alt=""></span></span>

## Manual kerning

<span><span>If autokerned values need to be adjusted (and they will!) then this can be done in a number of ways.</span></span>

<span><span>- via the 'kerning by classes' dialog window.</span></span>

<span><span>- using the Metrics Window.</span></span>

<span><span>- using the 'Kern Pair Closeup' command from the Metrics menu.</span></span></p>