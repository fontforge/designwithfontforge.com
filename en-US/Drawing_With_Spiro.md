---
layout: bookpage
weight: 5
weight: 5
section: Getting To Know FontForge
title: Drawing with Spiro
---

Spiro is a toolkit for designing curves in an alternate method to the more traditional Bézier curves. Although it is optional, FontForge can be installed to include a Spiro mode that offers you tools to create these specific types of curves. See the chapter of Installing FontForge for more detail on how to install Spiro tool support.

Spiro drawing is different, but it can create curves in a way that Bézier tools cannot, and it can solve problems that other drawing methods cannot. Spiro can be a very cool tool to use. Please experiment!

### The Spiro toolset

Many of the same drawing tools are available in Spiro mode as those described in the "<a title="Using the FontForge Drawing Tools" href="drawing-with-spiro/how-to-draw">Using the FontForge drawing tools</a>" chapter, but some of them work very differently when you are in Spiro mode.

<img src="images/spiro_tools_labels.png" alt="" width="400">

There are five different types of Spiro points:

<ol><li>G4 points, used for a more gentle curve
* G2 points, used for a sharper curve
* Corner points, for abrupt corner joints
* Previous constraint points, used when the countour of the path changes from a curve to a straight line 
* Next constraint points, used when the path changes from a straight line to a curve</li>
</ol>

### Draw an S with Spiro

Going through the exercise of drawing an 'S' with Spiro will make you comfortable with Spiro.

<strong>Tip:</strong> When drawing in Spiro mode, always start with a G4 or G2 point. Beginning with the other types of points doesn't really work in FontForge.

Start off with a G4 point at the topmost point of your 'S,' followed by a corner point, then another corner point. Work clockwise around the shape of the letter.

<img src="images/S%20at%2083%20from%20Untitled1%20-_023.png" alt="">

Follow this with a G4, a previous constraint point, and a next constraint point.

<img src="images/S%20at%2083%20from%20Untitled1%20-_022.png" alt="">

Next, add another G4 point, followed by two more corner points.

<img src="images/S%20at%2083%20from%20Untitled1%20-_024.png" alt="">

Then a G4, followed by a previous constraint, followed by a next constraint.

<img src="images/S%20at%2083%20from%20Untitled1%20-_025.png" alt="">

Then, add one more G4 point, and, finally, close the shape at the starting point by clicking on it using the G4 point tool. <img src="images/S%20at%2083%20from%20Untitled1%20-_026.png" alt="">

Now you almost have an 'S'! Begin nudging the points around to get your S to look the way you like it.

Oops, what happened?

<img src="images/S%20at%2083%20from%20Untitled1%20-_032.png" alt="">

Don't worry -- Spiro sometimes does some funny things. Just hit <em>Undo,</em> or keep nudging the points to get things back on track.

Now you should see something like this:

<img src="images/S%20at%2083%20from%20Untitled1%20-_028.png" alt="">

Toggle out of Spiro mode back into Bézier mode. You will notice there are a lot of points on the resulting curve - you -may want to clean some of them up. 

<img src="images/S%20at%2083%20from%20Untitled1%20-_031.png" alt="">

To clean up those extra points, go to the Element menu and select Simplify &gt; <em>Simplify</em>. Then go to Element &gt; <em>Add Extrema</em>. Finally, go to Element &gt; Round &gt; <em>To Int</em>. After these clean up operations, you will see something like this:

<img src="images/S%20at%2083%20from%20Untitled1%20-_029.png" alt="">

You can continue to experiment with Spiro mode to get a feel for how it differs from Bézier drawing.  The terminology is different, but as is the case with FontForge's other drawing and adjustment tools, practice makes perfect.</p>