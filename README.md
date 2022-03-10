
<p align="center">
    <img src="docs/images/title.png" width="800px"/>
</p>


# Table of Contents

* [Table of Contents](#table-of-contents)
* [Background](#background)
* [Overview](#overview)
* [Layout](#layout)
* [Learning](#learning)
* [Installation](#installation)
  * [macOS](#macos)
  * [Linux](#linux)
  * [Windows](#windows)
* [FAQ](#faq)
* [Contributing](#contributing)

# Background

Programmer Colemak is a keyboard layout to make typing – especially coding – ergonomic and enjoyable. It allows you to type the most common programming symbols from the home row (where your fingers naturally rest). I’ve had a significant reduction in wrist pain since I started using this layout over an year ago and I haven’t looked back since.


# Overview

This repository contains information on installing and learning this layout, as well some of the philosophy and rationale behind it. You can also find stories and experiences of other users under the [discussions][gh-discussions] tab. Find installation instructions for your operating system [below](#installation).

# Layout

The layout is based on [Colemak][colemak] keyboard layout. The most significant change is the new `◯`  key (or the “circle key”), which while held converts the home row keys to symbols (see below the home row letters). The `backspace` has also moved to a closer location and `caps lock` has been replaced by `ctrl`. [See all the changes](CHANGES.md).

<img src="docs/images/ansi_keyboard.png"></img>


# Learning

**Note: If you’re new to touch typing, learning the layout will be much easier since you don’t have another layout in your muscle memory!**

The quickest way to learn is to go cold-turkey: simply install the layout and use it for your everyday work. This may not be practical if you have work or school, in which case, you can dedicate time to learn the layout and switch once at a comfortable speed. You can also consider [Tarmak][tarmak], which are a series of layouts that gradually add keys.

It will likely take several weeks to months, depending on your learning speed and method. It also gradually becomes easier to learn, especially after the first few days. For training, you can use any website that has support for Colemak, since Programmer Colemak is not too different. One good site for learning typing is [keybr.com][keybr].

Finally, if you’re looking for some inspiration, head to [Stories][gh-discussions-stories] under discussions!


# Installation

## [MacOS](layouts/macOS)

The installation on macOS is very simple:

1. Install [Karabiner](https://karabiner-elements.pqrs.org) (you can also use `brew install --cask karabiner-elements`)

2. Replace the Karabiner configuration (likely `~/.config/karabiner/karabiner.json`) with the [configuration](/layouts/macOS/prog_ck.json) in the GitHub repository (if you’re already using Karabiner, just copy and paste the profile from the GitHub configuration)

Since there are different modifiers on Apple computers, the default configuration is a bit different for macOS.

- `fn (or 🌐 on newer macs)` becomes `z`
- `^ (control)` is replaced by `fn (or 🌐 on newer macs)`
- `caps lock` is now `⌘ (command)`
- `⌘ (command)` is now equivalent to `ctrl` + `shift` (it is now a free modifier key and can be used for anything. `ctrl` + `shift` is just an uncommon combination).
 
These are the default (but recommended) changes, but can be modified to what’s comfortable for you using Karabiner.

**Uninstallation**

To return to the default layout, create a new profile through the Karabiner GUI (under `Profiles`) and switch to it. To uninstall completely, remove the `Programmer Colemak` profile or uninstall Karabiner.

## [Linux](layouts/linux)

### [Terminal](layouts/linux/loadkeys)

**This installation is for those not using a desktop environment. You probably don’t need this unless you’re using just a terminal (e.g. while installing Arch Linux).**

Run `loadkeys linux/prog_ck.loadkeys` and the keyboard should be activated.
See [loadkeys][loadkeys-man] for usage.

### [X Windowing System](layouts/linux/xkb)

If you’re using a desktop environment (e.g. Gnome, KDE, or Xfce), then you’re likely using the [X Windowing System][x-windowing-system] (run `echo $XDG_SESSION_TYPE` to check). X uses the X Keyboard Extension (xkb) for keyboard layouts. You can
install Programmer Colemak with two methods.

**Temporary**

To install temporarily (resets on restart), simply run `xkbcomp prog_ck_keymap.xkb $DISPLAY` and the keyboard should be activated. 
You may safely ignore any errors when running the command.

**Full**

The configuration directory for keymaps varies by distribution (for Arch, it is `/usr/share/X11/xkb/symbols/`). Inside the directory, append to the `us` file the contents of `prog_ck_symbols.xkb`.

Then, add the following lines to `/usr/share/X11/xkb/rules/evdev.xml` (may be at a different location) below  the first instance of `<name>us</name>`.

```
<variant>
    <configItem>
        <name>programmer-colemak</name>
        <description>Programmer Colemak</description>
    </configItem>
</variant>
```

From here, you can use your desktop environment’s gui keyboard tool to load “Programmer Colemak”.

If you’re interested in learning more, see the [arch wiki][arch-wiki] and [this guide][xkb-guide].

### Wayland

Not supported.

## [Windows](layouts/windows)

If you’re just trying out Programmer Colemak, use the *lite* installation. If it becomes your daily driver, use the *full* installation. Both require [AutoHotKey][ahk], but the full installation also requires [Sharpkeys][sharpkeys].

### [Lite installation](layouts/windows/lite)

This is the fully-featured layout except that it may not work in some privileged applications (such as `powershell`. To install, run [prog_ck.ahk](layouts/windows/lite/prog_ck.ahk) with [AutoHotKey][ahk].

### [Full installation](layouts/windows/full)

This installation modifies the registry, so please create a backup of your current keyboard layout. To install, open [Sharpkeys][sharpkeys] and load [prog_ck.skl](layouts/windows/full/prog_ck.skl) and then run [prog_ck_hr.ahk](layouts/windows/full/prog_ck_hr.ahk) in [AutoHotKey][ahk].

**Notes**

Some applications (such as Microsoft Word) have shortcuts bound to the `ALT` key (for many applications, it’s only `Left ALT`), causing conflicts with the mapping of `◯` to `Right ALT`. 

To work around this, `Right ALT` can be mapped to the `ATTN` modifier (which is virtually obsolete today) using the Keyboard Tool in [Microsoft PowerToys][powertoys], after which there should not be any more shortcut conflicts with the keyboard layout.

# FAQ

**Is this layout only for programmers?**

No, everyone is encouraged to use this layout! Symbols such as parentheses and brackets are not only used by programmers, and additional changes such as the closer backspace button will benefit everyone.

**Do I need to change my physical keyboard layout?**

No. If you’re touch typing, you shouldn’t be looking at the keyboard (you’re welcome to change it if you want though). 

**Should I learn this layout?**

The switch does require some effort, but if you type several hours a day or more and plan on doing so for some time, it may be worth it!

# Contributing

See [Issues][gh-issues] to help out or to suggest ideas. If you’re learning or using the layout, please share your experience with the community on [Github Discussions][gh-discussions-stories].


[colemak]: https://colemak.com/
[tarmak]: https://forum.colemak.com/topic/1858-learn-colemak-in-steps-with-the-tarmak-layouts/ 
[loadkeys-man]: https://man7.org/linux/man-pages/man1/loadkeys.1.html 
[x-windowing-system]: http://www.opengroup.org/tech/desktop/x-window-system/ 
[xkb-guide]: https://www.charvolant.org/doug/xkb/html/index.html 
[arch-wiki]: https://wiki.archlinux.org/title/X_keyboard_extension
[keybr]: https://www.keybr.com/ 
[ahk]: https://www.autohotkey.com
[sharpkeys]: https://github.com/randyrants/sharpkeys
[powertoys]: https://docs.microsoft.com/en-us/windows/powertoys/
[gh-issues]: https://github.com/aru-py/programmer-colemak/issues
[gh-discussions]: https://github.com/aru-py/programmer-colemak/discussions/
[gh-discussions-stories]: https://github.com/aru-py/programmer-colemak/discussions/categories/stories
