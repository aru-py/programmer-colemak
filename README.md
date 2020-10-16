
<h1 style="margin-left:-300px">
  <img src="docs/title.png" width="800px"></img>
</h1>


# What is this?
Programmer-Colemak is a programmer-oriented modification of the [Colemak Keyboard Layout](([https://colemak.com/](https://colemak.com/)). It allows home-row access to the most common symbols and rearranges modifier keys into far more ergonomic locations.

# Layout
The primary feature of this layout is that a new modifier key has been introduced in the bottom row, which allows home-row-typing of the most common programming symbols. To make room for this key, the `Z, X` and `C` keys have been shifted left, with the rare `Z` key occupying the former `CTRL` Key. The `CTRL` key has moved to far more economical location, replacing the outmoded `CAPS LOCK` key. `Backspace` has been moved closer, so it is now within the natural reach of the right pinkie. Finally, the layout adopted the location of the `D` and `H` keys from `Colemak-DH`.

<img src="docs/ansi_keyboard.png"></img>

# Usage

### Linux
Clone this repository or `curl` [aru.ai/keys](http://aru.ai/keys), and place the `programmer-colemak.map` file in a convenient location. Run `xkbcomp programmer-colemak.map $DISPLAY` to enable the layout.

### Windows

There are two ways to use this layout on Windows. 

If you don't have root permission or you would just like to quickly try out the layout, use the AutoHotKeys script. You can use the precompiled executable if you don't have AHK already installed. You can switch back to your default layout by simply killing the process. The  drawback to this method is that the `CAPS LOCK` and `CTRL` keys will not be modified, and the key bindings may not work in all programs.

For a more stable install, you will have to use SharpKeys which remaps the keys on the operating-system level. **This has the potential to incorrectly remap your keyboard, so proceed with caution.** If you only want to remap `CAPS LOCK` and `CTRL`, use the `caps_lock_ctrl.sk` file, otherwise use the full `pcmk-sharpkeys` file. Import the file into SharpKeys, load it, and restart your computer.
