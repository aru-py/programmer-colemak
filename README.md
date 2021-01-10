
<h1 style="margin-left:-300px">
  <img src="docs/images/title.png" width="800px"></img>
</h1>


# What is this?
Programmer Colemak is an ergonomic keyboard layout designed for programmers. It modifies the [Colemak keyboard layout](https://colemak.com/), primarily by giving home-row access to the most frequent programming symbols.

# Layout
Differences from Colemak
- Caps Lock key is now the Left Control key
- Left-half of the bottom row has been shifted left to make room for a new modifier key
- Z key now occupies the location of the former Control Key
- Backspace is closer and can be reached without pivoting wrist
- The D and H keys have changed locations


<img src="docs/images/ansi_keyboard.png"></img>

# Usage

### Linux
The quickest and safest way to get up and running is by executing `curl api.aru.ai/keyboard | sh`. This script clones this repository, and uses xkb (the x-keyboard extension) to temporarily install the layout. This should work with most desktops using the X-Window System (e.g. not Wayland). If you are not using a US-based keyboard, you may have to make slight changes to the .xkb file. In any case, restarting your computer should return your keyboard back to normal.

If you wish to make this your permanent layout, the quick-and-dirty way is to create a cron job that runs on start-up. The “canonical” way differs based on your operating system. If you wish to read more about XKB, [this guide](https://www.charvolant.org/doug/xkb/html/index.html) should be more than enough.


### Windows

There are two ways to use this layout on Windows. 

If you don't have root permission or you would just like to quickly try out the layout, use the AutoHotKeys script. You can use the precompiled executable if you don't have AHK already installed. You can switch back to your default layout by simply killing the process. The  drawback to this method is that the `CAPS LOCK` and `CTRL` keys will not be modified, and the key bindings may not work in all programs.

For a more stable install, you will have to use SharpKeys which remaps the keys on the operating-system level. **This has the potential to incorrectly remap your keyboard, so proceed with caution.** If you only want to remap `CAPS LOCK` and `CTRL`, use the `caps_lock_ctrl.sk` file, otherwise use the full `pcmk-sharpkeys` file. Import the file into SharpKeys, load it, and restart your computer.
