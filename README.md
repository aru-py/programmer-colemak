<p align="center”>
    <img src="docs/images/title.png" width="800px"/>
    <b>Keyboard Layout for Programmers.</b>
</p>


# Overview

For the typewriter age, the QWERTY layout and its inefficiencies were necessary, but in our modern world, they are cruel and taxing. It’s a grim fact that for programmers in particular, who spend a large part of their lives over the keyboard, some of their most common symbols are tucked away at the far-away and hard-to-reach fringes of the keyboard. Frustrated with these inequities, Programmer Colemak was designed to minimizes wrist strain by placing the most frequent programming symbols in the home row, making typing safer and more enjoyable.

<img src="docs/images/ansi_keyboard.png"></img>

# Design

Programmer Colemak is based on the Colemak keyboard layout and adopts changes from colemak-dh. It also borrows from Programmer Dvorak. The layout’s key innovation is the introduction of a “super” key in the bottom, which acts as a modifier (akin to `ctrl` or `shift`), and while pressed converts the home row keys to common programming characters. 

The arrangement of the symbols was designed using the symbol frequencies in common open-source projects. It was endeavored to avoid favoring the syntax of any particular language. See the chart below.

![key frequency](docs/images/computer_language_char_frequency.png)
[source](http://xahlee.info/comp/computer_language_char_distribution.html)

Some other notable changes from Colemak are the backspace key is shifted so that it’s within range of the pinky, the caps lock key is replaced by control, and Z occupies the location of the former control key. The table below summarizes these changes.


| Old Key(s) |      New Key(s)      |
|------------|----------------------|
| caps lock  |  control             |
| control    |  z                   |
| [ ]         |  backspace           |
| zxcd       |  xcdv (shifted left) |


# Installation

## Linux

### Terminal

(`/linux/loadkeys`)

*This is if you’re not using a desktop environment (e.g. just a raw terminal). This
version may be missing a few features.*

Run `loadkeys linux/prog_ck.loadkeys` and the keyboard should be activated
. See [loadkeys](https://man7.org/linux/man-pages/man1/loadkeys.1.html) for usage.

### X Windowing System
(`/linux/xkb`)

If you’re using a desktop environment (e.g. Gnome, KDE, or Xfce), then you’re likely using the [X Windowing System](http://www.opengroup.org/tech/desktop/x-window-system/) (run `echo $XDG_SESSION_TYPE` to check). X uses the X Keyboard Extension (xkb) for keyboard layouts. You can
install Programmer Colemak with two methods.

**Temporary**

To install temporarily (resets on restart), simply run `xkbcomp prog_ck.xkb $DISPLAY` and the keyboard should be activated. 
You may safely ignore any errors when running the command.

**Full**

The configuration directory for keymaps varies by distribution (for Arch, it is `/usr/share/X11/xkb/symbols/`). Inside the directory, append to the `us` file the contents of `prog_ck.xkb`.

Then, add the following lines to `/usr/share/X11/xkb/symbols/base` (may be at a different location) below  the first instance of `<name>us</name>`.

```
<variant>
    <configItem>
        <name>programmer-colemak</name>
            <description>Programmer Colemak</description>
        </configItem>
    </variant>
<variant>
```

From here, you can use your desktop environment’s gui keyboard tool to load “Programmer Colemak”.

If you’re interested in learning more, see the [arch wiki](https://wiki.archlinux.org/title/X_keyboard_extension) and [this guide](https://www.charvolant.org/doug/xkb/html/index.html).


### Wayland

Not supported yet.

## Windows

There are two installations provided for Windows, which require [AutoHotKey](https://www.autohotkey.com) and (only for full installation) [Sharpkeys](https://github.com/randyrants/sharpkeys).

### Lite installation
(`/windows/lite`)

This method does not modify the registry, but the `ctrl` and `caps lock` keys will not be modified and the keyboard may not work in privileged applications (such as powershell). 
Install by running `prog_ck.ahk` with AutoHotkey.

### Full installation
(`/windows/full`)

This method modifies the registry so create a backup to return to your normal keyboard layout if needed. 
To install, install `programmer_cokemak.sk` with Sharpkeys and then run `prog_ck_hr.ahk` in AutoHotkey.

## MacOS

Soon to be released. Stay tuned!
