---
published: true
layout: bookpage
weight: 21
category: Getting To Know FontForge
title: Drawing with Spiro
---

Spiro is a toolkit for designing curves in an alternate method to the more traditional B&eacute;zier
curves. Although it is optional, FontForge can be installed to include a Spiro mode that offers you
tools to create this specific kind of curves.  
See [“Installing FontForge”] for more details on how to include the Spiro library in your program.

Spiro drawing has a different approach, that can help you getting your curves done in a different
way and solving your conception problems. Please experiment!

## The Spiro toolset

Many of the same drawing tools are available in Spiro mode as those described in the [“Using the
FontForge drawing tools”] chapter, but some of them work very differently when you are in Spiro mode.

<img src="images/spiro_tools_labels.png" alt width="600">

There are five different types of Spiro points:

1. G4 points, used for a more gentle curve
2. G2 points, used for a sharper curve
3. Corner points, for abrupt corner joints
4. Previous constraint points, used when the contour of the path changes from a curve to a straight
   line
5. Next constraint points, used when the path changes from a straight line to a curve

## Drawing an ‘S’ with Spiro

Going through the exercise of drawing an ‘S’ with Spiro will make you comfortable with Spiro.

<p class="note"><b>Tip:</b> When drawing in Spiro mode, always start with a G4 or G2 point.
Beginning with the other types of points doesn’t really work in FontForge.</p>

Start off with a G4 point at the topmost point of your ‘S,’ followed by a corner point, then another
corner point. Work clockwise around the shape of the letter.

<img src="images/S%20at%2083%20from%20Untitled1%20-_023.png" alt>

Follow this with a G4, a previous constraint point, and a next constraint point.

<img src="images/S%20at%2083%20from%20Untitled1%20-_022.png" alt>

Next, add another G4 point, followed by two more corner points.

<img src="images/S%20at%2083%20from%20Untitled1%20-_024.png" alt>

Then a G4, followed by a previous constraint, followed by a next constraint.

<img src="images/S%20at%2083%20from%20Untitled1%20-_025.png" alt>

Then, add one more G4 point, and finally, close the shape at the starting point by clicking on it
using the G4 point tool.

<img src="images/S%20at%2083%20from%20Untitled1%20-_026.png" alt>

Now you almost have an ‘S’! Begin nudging the points around to get your S to look the way you want.

<div class="warn"><p>Oops, what happened?</p>

<img src="images/S%20at%2083%20from%20Untitled1%20-_032.png" alt>

<p>Don’t worry &mdash; Spiro sometimes does some funny things. Just hit <i>Undo,</i> or keep nudging
the points to get things back on track.</p></div>

Now, you should see something like this:

<img src="images/S%20at%2083%20from%20Untitled1%20-_028.png" alt>

Toggle out of Spiro mode back into B&eacute;zier mode. You will notice there are a lot of points on
the resulting curve &mdash; you may want to clean some of them up. 

<img src="images/S%20at%2083%20from%20Untitled1%20-_031.png" alt>

To clean up those extra points, go to the Element menu and select <i>Simplify &gt; Simplify</i>.
Then go to <i>Element &gt; Add Extrema</i>. Finally, go to <i>Element &gt; Round &gt; To Int</i>.
After these clean up operations, you will see something like this:

<img src="images/S%20at%2083%20from%20Untitled1%20-_029.png" alt>

You can continue to experiment with Spiro mode to get a feel of how it differs from B&eacute;zier
drawing.  
The terminology is different, but as with FontForge’s other drawing and adjustment tools, practice
will get you the things you want.

[“Installing FontForge”]: Installing_Fontforge.html
[“Using the FontForge drawing tools”]: Using_the_Fontforge_Drawing_Tools.html
