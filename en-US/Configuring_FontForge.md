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

## Windows & GNU+Linux

Currently we have nothing specific to Windows or any GNU+Linux distribution.
If you think of something, [tell us](https://github.com/fontforge/designwithfontforge.com#how-to-contribute).

## Mac OS X

To open a long file or folder location path provided below:

1. Copy the path
1. In Finder: Press `⇧⌘G` to go to folder
1. Paste in the path and press `Go`

#### Keyboard Shortcuts

Navigate the interface by pressing `Ctrl-Alt` + the underlined key. Example: if a dialog asks you if you're <span class="underline">O</span>K, press `Ctrl + Alt + o`

Change keyboard shortcuts by editing the `default` text file:

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/hotkeys/default
```

All files inside `FontForge.app` are overwritten when you update FontForge so save a copy of your modified `default` file somewhere else.

#### UI Size

Change the UI size by editing the `resources` text file:

```
/Applications/FontForge.app/Contents/Resources/opt/local/share/fontforge/pixmaps/resources
```

Add the line `Gdraw.ScreenWidthCentimeters: 34` if your screen is 34cm wide. Play around with different values until you're happy.

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

FontForge uses three mouse button clicks for some extra functions. You can emulate a three mouse button in X11/Xquartz preferences, in the `Input` section's option `Emulate three button mouse`

#### Window management

Window handling can a bit buggy especially on dual monitor systems. Use [ShiftIt](https://github.com/fikovnik/ShiftIt) to control window positions via keyboard shortcuts.
