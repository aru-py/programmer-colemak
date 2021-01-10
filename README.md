
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
If you want to simply try out this layout, run the `programmer-colemak.ahk` script. The drawbacks to this approach is that it may not work in some applications (such as powershell) and that the control and caps lock keys will not be modified. If you want to be able to use this layout as if it were native, install `programmer_cokemak.sk` with Sharpkeys, which will modify the registry. **This has the potential to incorrectly map your keyboard, so proceed with caution**.
