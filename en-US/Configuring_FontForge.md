---
published: true
layout: bookpage
weight: 16
category: Getting To Know FontForge
title: Configuring FontForge
---

FontForge can be fine-tuned in various ways.
Here are some tips and tricks for doing so.
You have many options for optimizing FontForge for your platform and workflow.

Please [tell us](https://github.com/fontforge/designwithfontforge.com#how-to-contribute) us if you have any tips you want to share.

#### First Things First

When making any configuration changes, be sure to follow this:

1. Quit FontForge (and X11)
2. Make the changes
3. Start FontForge and test your changes

## Windows

Currently we have nothing specific to the Windows distribution.
If you think of something, [tell us](https://github.com/fontforge/designwithfontforge.com#how-to-contribute).

## GNU+Linux

Currently we have nothing specific to any GNU+Linux distribution.
If you think of something, [tell us](https://github.com/fontforge/designwithfontforge.com#how-to-contribute).

## Mac OS X

To open a long file or folder location path provided below:

1. Copy the path
2. `⌘ Tab` to switch to Finder
3. `⇧⌘G` to open the Go menu&nbsp;&nbsp;→&nbsp;&nbsp;Go to Folder item
4. `⌘V` to paste in the path
5. `Go` to open a new Finder window at that location

#### Keyboard Shortcuts

Many dialog and menu items have one letter that is u<span class="underline">n</span>derlined.
These can be accessed immediately by pressing <kbd>Ctrl</kbd> + <kbd>Alt</kbd> and that key.
For example, if a dialog asks you if you're <span class="underline">O</span>K, press <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>o</kbd>.

If you do not use a US English keyboard, you may find some of the keyboard shortcuts are silly.
Or, you might just want to customize them to be the way that you expect.
To change these keys open and edit the `default` text file, located here:

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/hotkeys/default
```

When you install the next release, all files inside `/Applications/FontForge.app` will be overwritten, so save a duplicate copy of your `default` file somewhere else, too.

#### UI Size

If the UI looks too big or too small, it can be scaled to better fit your computer.
Open and edit the `resources` text file, located here:

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/pixmaps/resources
```

Add the line `Gdraw.ScreenWidthCentimeters: 34` if your screen is 34cm wide.
Try different values until you're happy.

#### Bookmarks

In the file dialog there is a button to `Bookmark Current Dir`, but `Remove Bookmark...` doesn't work [#2054](https://github.com/fontforge/fontforge/issues/2054).
You can edit the list manually in the `FCBookmarks` section of the `prefs` file located at

```
~/.config/fontforge/prefs
```

Reset your bookmarks by opening Terminal and pasting the following text into Terminal:

```
sed -i bak -e 's/^FCBookmarks.*/FCBookmarks:     ~\/Library\/Fonts\/;\/Library\/Fonts\/;\/System\/Library\/Fonts\//g' ~/.config/fontforge/prefs;
```

Then press Enter to run this command.
If you see no errors, it worked correctly.

#### 3 button mouse

FontForge uses three mouse button clicks for some extra functions.
If you don't have a three button mouse you can emulate that by enabling it in X11/Xquartz preferences, in the `Input` section's option `Emulate three button mouse`

#### Change X11/XQuartz icon to FF icon

If you primarily use X11 for FontForge, you can change its icon. Copy and paste the following text into the terminal and follow the instructions

```
sudo cp -f /Applications/FontForge.app/Contents/Resources/FontForge.icns /Applications/Utilities/XQuartz.app/Contents/Resources/X11.icns | sudo touch /Applications/Utilities/XQuartz.app 
```


#### Window management

FontForge isn't a native Mac app, so window handling can be slighty "off," especially on dual monitor systems.
To regain control of window positions, use the free, libre, open source [ShiftIt](https://github.com/fikovnik/ShiftIt) utility to assign keyboard shortcuts to set window positions.
