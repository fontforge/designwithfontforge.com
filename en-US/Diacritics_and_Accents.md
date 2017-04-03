---
published: true
layout: bookpage
weight: 48
section: Workflow
title: Diacritics and Accents
---
A diacritic is a mark added to, or combining with, a letter, often used to change the sound value of the letter to which the mark is added. Some diacritical marks (such as the 'acute' and 'grave') are often called accents. Diacritical marks may appear above or below a letter, within it or between two letters.

<img width="5%" src="images/dia_a_grave.png"/>
<img width="5%" src="images/dia_a_circumflex.png"/>
<img width="5%" src="images/dia_a_tilde.png"/>
<img width="5%" src="images/dia_a_dieresis.png"/>
<img width="5%" src="images/dia_c_ogonek.png"/>
<img width="5%" src="images/dia_c_cedilla.png"/>
<img width="5%" src="images/dia_c_dot.png"/>
<img width="5%" src="images/dia_g_comma.png"/>
<img width="5%" src="images/dia_hungarumlaut.png"/>


### Some examples of diacritics

<p class="imagebox"><img src="images/dia_a_grave.png"/></p>

Lowercase 'a with grave' (unicode u+00e0).
Created in a font by combining the lowercase 'a' glyph (unicode u+0061) and the 'combining grave accent' glyph (unicode u+0300).

<p class="imagebox"><img src="images/dia_a_circumflex.png"/></p>

Lowercase 'a with circumflex' (unicode u+00e2).
Created in a font by combining the lowercase 'a' glyph (unicode u+0061) and the 'combining circumflex accent' glyph (unicode u+0302).

<p class="imagebox"><img src="images/dia_c_ogonek.png"/></p>

Lowercase 'a with ogonek' (unicode u+0105).
Created in a font by combining the lowercase 'a' glyph (unicode u+0061) and the 'combining ogonek' glyph (unicode u+0328).

<p class="imagebox"><img  src="images/dia_c_cedilla.png"/></p>

Lowercase 'c with cedilla' (unicode u+00e7).
Created in a font by combining the lowercase 'c' glyph (unicode u+0063) and the 'combining cedilla' glyph (unicode u+0327).

<p class="imagebox"><img  src="images/dia_hungarumlaut.png"/></p>

Lowercase 'o with double acute' (unicode u+0151).
Created in a font by combining the lowercase 'o' glyph (unicode u+006f) and the 'combining double acute accent' glyph (unicode u+030b).

<hr>

FontForge can automatically create accented characters in 2 main ways;

1. FontForge contains rudimentary information on where to place diacritic marks, so can automatically build most accented characters.
2. For much greater control of diacritic placement, FontForge can place diacritic marks based on the position of user created anchor points.

<p class="note">It should be noted here that if you are not using anchors and lookup tables to position diacritic marks then if the glyph of a particular diacritic mark is not present in your font, FontForge will instead use a similar spacing character in place. For example, if the combining mark 'acutecomb' (u+0301) is not present, then FontForge will use the standard 'acute' (u+00b4) character when it automatically builds any acute accented glyphs. If the 'acutecomb' is present, then FontForge will always use that, unless you specifically force FontForge to use spacing characters for building accented glyphs.</p>

## FontForge's basic auto placement of diacritic marks.

In FontForge's 'Element' menu, is a function called 'Build' that can be used to create accented characters, certain composite characters and some duplicate characters. To auto build accented characters FontForge uses the 'Element > Build > Build Accented Glyph' function. This function can also be performed with the keystroke 'ctrl + shift + a'. So, using the example of building the 'a acute' character (u+00e1) , we would need to have already created the lowercase 'a' (u+0061) and the 'acutecomb' glyph (u+0301). Then selecting the 'a acute' character slot and using the 'Element > Build > Build Accented Glyph' function, FontForge will place a reference to the lowercase 'a' glyph and a reference to the 'acutecomb' glyph into the 'a acute' character slot (see below).

<img src="images/dia_auto_a_acute.png"/>

This automatic placement of diacritic marks can be tuned by preferences, found in the 'accents' section of FontForge's preferences menu 'File > Preferences > Accents' (see below). 

<img src="images/preferences_accents.png" />

'PreferSpacingCharacters' - selecting this option to 'On' will force FontForge to build accented glyphs with spacing characters even if the appropriate combining characters are present. This option is ignored when using anchors to position diacritic marks.

'AccentOffsetPercent' controls the amount of vertical space between the base glyph and the mark glyph. The value entered here is a percentage of the em square of the font. So a value of '6' will offset the mark glyph from the base glyph by 6 percent  of the font's em square.

The preferences for the horizontal placement of the mark glyph can also be set. Selecting 'On'  for the   preference 'AccentCenterLowest' will centre the accent glyph to the lowest point of the base glyph.
 
Selecting 'AccentCenterHighest' to 'On' will centre the accent to the highest point of the base glyph.
 
Selecting both the above preferences to 'Off' will centre the accent into the width of the base glyph. Selecting both the above preferences to 'On' will centre the accent in the width of the character slot.


## Using Anchor Points to place diacritics

The most accurate and efficient way to build accented characters in FontForge is to use 'anchor points'.

Anchor points allow fine control of the positioning of exactly where the diacritic mark will be positioned in relation to each base glyph in the accented characters. So, in the case of the 'a ogonek' character, the 'a' glyph is the base glyph, and it will be positioned normally, the 'ogonek' glyph is the 'mark glyph' and will be positioned so that the anchor point of the 'mark glyph' coincides with the anchor point in the base glyph.

In the example below, creating an 'a ogonek' character, an anchor class has been created called 'bottom'. In the lowercase 'a' glyph, the 'bottom' anchor is placed at the bottom of the stem of the 'a'. This is the 'base glyph' form of the anchor. (see below)

<img src="images/dia_a_anchor.png"/>

In the 'ogonek' glyph the 'bottom anchor is placed at the top of the ogonek glyph, in the form of a 'mark' anchor. (see below)

<img src="images/dia_ogonek_anchor.png"/>

Then, when the 'a ogonek' character is built (using the 'Build Accented Charcter' function) the 'bottom' mark anchor point will be placed at the same location as the 'bottom' base anchor point, ensuring that the referenced ogonek glyph is placed correctly at the foot of the stem of the referenced 'a' glyph (see below). This exact and automatic placement would not have been possible without using anchor points to position the base and mark glyphs.

<img src="images/dia_a_ogonek_anchors.png" />

### Creating anchor points for placing diacritic marks (Mark to base positioning)

FontForge uses lookup features know as 'mark-to-base' for creating and positioning anchor points. These mark-to-base lookups can be created and edited in the GPOS Lookups section of the Font Info of your font ( 'Element>Font Info>Lookups>GPOS').

From the GPOS Lookups window, click on 'Add Lookup' and choose the Type 'Mark to Base Position', then choose 'Mark Positioning' from the 'New' column of the Feature pane (see below). Click 'OK' to close the window.

<img src="images/dia_new_mark_to_base_1.png"/>

With the new lookup selected, click 'Add Subtable'. In the resulting window (see below) you can create your anchor classes.

<img src="images/dia_anchor_new_subtable.png" />

In this example (below), two anchor classes have been created, 'top' and 'bottom'. The 'top' anchor class will be used to position diacritic marks that are placed above glyphs, and the 'bottom' anchor will be used for positioning marks below glyphs.

<img src="images/dia_marks_classes_add.png" />

To place an anchor with a glyph, simply use the right mouse click in a glyph edit window, and select the function 'Add Anchor' from the right-click menu.
The dialogue box that appears enables you to assign whether the anchor is a base or mark anchor. The anchor's position can also be fine tuned from this dialogue box. Alternatively the anchor can be moved by being dragged to position with the mouse, or moved by using the up, down, left and right keys. The anchor point can also be edited by right clicking on the anchor point and choosing 'get info' from the mouse click menu.

### Control of Anchor Classes

FontForge also contains a usefull graphical interface for controlling the position of whole classes of anchor points, enabling the user to fine tune the position of, for example, all the acute accents at once in a font, or all the anchors in a class contained in, for example, characters that reference the lowercase 'e'. In the examples below we can see how to use this graphical interface to fine tune the position of all acute accents in a font, and, to fine tune a class of anchors across all characters that reference the lowecase 'e' glyph.

Once you have created anchor classes within your mark-to-base position lookups, and added anchors to some glyphs, you can control these classes from "Element>Font Info>Lookups>GPOS" and then editing a subtable that contains anchor classes. You will then see this window;

<img src="images/dia_anchor_control_1.png" />

From here select the class you wish to edit and click on the 'Anchor Control' button. You will then be presented by a graphical interface to that class. In the examples below we are editing the control of the 'top' class. In the first example (below) the lowercase 'e' has been selected from the 'Bases' section of the drop down menu. When a base glyph is selected, all characters that reference that glyph and contain a 'top' base anchor, will be displayed in the preview pane. We can then adjust the position of the 'top' base anchor to see how it effects the position of all glyphs that contain the 'top' mark anchor.

<img src="images/dia_anchor_control_e.png" />

In the second example, below, the 'acute' glyph has been selected from the 'Marks' section of the drop down menu. When a mark glyph is selected then all glyphs that reference the selected glyph and contain a 'top' mark anchor will be displayed for preview.


<img src="images/dia_anchor_control_mark.png" />


## Other resources

* <http://urtd.net/projects/cod/about>
* <http://ilovetypography.com/2009/01/24/on-diacritics/>
* <http://diacritics.typo.cz/>
* <http://scripts.sil.org/ProbsOfDiacDesign>
* <http://www.microsoft.com/typography/developers/fdsspec/diacritics.htm>
* <https://twitter.com/fostertype/status/610292546971893760>
