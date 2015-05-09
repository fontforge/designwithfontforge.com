---
published: true
layout: bookpage
weight: 16
category: Getting To Know FontForge
title: Tips and Tricks
---

You have many options for optimizing FontForge for your platform and workflow. You can read some of them below. Please [tell](https://github.com/fontforge/designwithfontforge.com/issues/new) us if you have a tip you want to share.

#### NB: When making changes

Quit FontForge and X11&nbsp;&nbsp;→&nbsp;&nbsp;Make the change&nbsp;&nbsp;→&nbsp;&nbsp;Reopen FontForge


## Windows

Nothing here yet

## Linux

Nothing here yet

## Mac
To open a long file/folder location provided below:<br>
Copy it&nbsp;&nbsp;→&nbsp;&nbsp;Switch to Finder&nbsp;&nbsp;→&nbsp;&nbsp;`⇧⌘G`&nbsp;&nbsp;→&nbsp;&nbsp;`⌘V`&nbsp;&nbsp;→&nbsp;&nbsp;`Go`

#### Keyboard shortcuts for dialogs etc.

You have probably noticed that many dialog and menu items have one letter that is u<span class="underline">n</span>derlined? These can be accessed by pressing e.g. `ctrl+alt+o` if a dialog asks you if you're <span class="underline">O</span>K. 


#### Bookmarks (edit)
You can `Bookmark current dir` in the file dialog in FontForge but `Remove Bookmark...` doesn't work. Edit them manually (they are called `FCBookmarks`):

```
~/.config/fontforge/prefs
```

#### Bookmarks (reset to mac default)
Open Terminal on your mac&nbsp;&nbsp;→&nbsp;&nbsp;Paste the following text&nbsp;&nbsp;→&nbsp;&nbsp;Press enter

```
sed -i bak -e 's/^FCBookmarks.*/FCBookmarks:     ~\/Library\/Fonts\/;\/Library\/Fonts\/;\/System\/Library\/Fonts\//g' ~/.config/fontforge/prefs
```

#### Shortcuts
Edit the `default` text file

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/hotkeys/default
```
NB: `default` gets overwritten when you update so keep a text copy somewhere if you make many changes.

#### UI size (if it looks to big/small)
Edit the `resources` text file

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/pixmaps/resources
```
Add the line `Gdraw.ScreenWidthCentimeters: 34` if your screen is 34cm wide. Try different values untill you're happy.

#### 3 button mouse
FontForge uses three mouse button clicks for some extra functions. You can emulate that by enabling it in X11/Xquartz preferences under `Input` and `Emulate three button mouse` if you don't have a three button mouse.

#### Change X11/XQuartz icon to FF icon
Only do this if you primarely use X11 for FontForge.<br>
Open Terminal on your mac&nbsp;&nbsp;→&nbsp;&nbsp;Paste the following text&nbsp;&nbsp;→&nbsp;&nbsp;Press enter&nbsp;&nbsp;→&nbsp;&nbsp;Type your password&nbsp;&nbsp;→&nbsp;&nbsp;Press enter again.

```
sudo cp -f /Applications/FontForge.app/Contents/Resources/FontForge.icns /Applications/Utilities/XQuartz.app/Contents/Resources/X11.icns | sudo touch /Applications/Utilities/XQuartz.app
```

#### Window management
Window handling can be slighty "off" since FontForge isn't a native Mac app. You can use Open Source [ShiftIt](https://github.com/fikovnik/ShiftIt) to asign keyboard shortcuts to window positions. 