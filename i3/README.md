# i3 Config [FOR THE LOVE OF GOD PLEASE READ ME]
I use the colemak keyboard layout, and because of that, most of my keybinds are altered in some way. Because I understand that dealing with such a different layout is completely insufferable, I have added comments explaining how to QWERTify the config, and explain the process in this README file.

## Dependencies
Do *not* go about installing random stuff without first understanding what they do or why the dotfiles depend on them.

Assuming you don't alter the config at all, dependencies are as follows:

- `i3gaps` (you can very easily make this work in standard i3 by reading this file).
- `xautolock` and `i3lock` for the locking system
- `picom`
- `polybar`
- `easyeffects`
- `feh`

## Keyboard layout
I use the colemak variant of the us keyboard. The line that sets the layout is commented out to avoid stress for people who don't read this. The layout is automatically set using setxkbmap. I do not know how Wayland deals with it, so you will have to do that research by yourself.

To set your layout, uncomment and edit `exec --no-startup-id setxkbmap us -variant colemak`.
If you just want the US layout, you can just use `exec --no-startup-id setxkbmap us`, per example.

To figure out what layouts there are, I recommend using `xkbcli`.

## Keybinds
### MOD key
MOD, by default is SUPER (the windows button on most keyboards)

You can change this by altering the `set $mod Mod4` line.

### Navigation
By default, you can change focus using MOD + \{ N E I O \}. These are similar to vim binds, but for colemak instead.

You can change these by editing `bindsym $mod+n focus left` and similar lines. You can also uncomment `#bindsym $mod+Shift+h move left` and similar lines.

### Move workspace to different monitor
It is theoretically possible with this config by uncommenting the `bindsym $mod+Shift+/ move container to output right` and `#bindsym $mod+Shift+m move container to output left` lines.

You should change the keybinds to whatever you want. I have not done enough testing to guarantee that it works as intended.

## Wallpaper
For setting the wallpaper, the script assumes that you have `feh` installed, and a file in `$HOME/Pictures/wallpaper.png`.

You can change this by changing the `exec --no-startup-id  feh --bg-fill $HOME/Pictures/wallpaper.png` line.

For more info, use `man feh`

## Bar
For the bar, the script assumes that you have a script at `$HOME/.config/polybar/launch.sh`. This script starts polybar. You can find my polybar dotfiles on this repo.

If you don't want to use my polybar script, you can just start polybar directly changing the `exec_always --no-startup-id $HOME/.config/polybar/launch.sh` line to whatever you want.

## Compositor
For compositing, I use `picom`, and this config assumes that you have it too. My picom dotfiles can also be found on this repo.

In order for the blur to work, you will need to use the `--experimental-backends` argument with picom.

If you want, you can disable or change its behaviour in the `exec --no-startup-id picom --experimental-backends` line.

## Autolock
I never actually tested the Autolock, so I do not know if it works. The dependencies are `xautolock` and `i3lock`, and the config file assumes you have `~/.config/i3/autolock/autolock.sh` (script available in this repo).

If you want to remove this functionality or alter it, you can edit the `exec --no-startup-id ~/.config/i3/autolock/autolock.sh` line.

## EasyEffects
I use EasyEffects for post processing of my audio.

If you don't want this, just comment out / remove the `exec --no-startup-id easyeffects` line.

## Notifications
I use dunst to display notifications. I use the default dunst config because I simply do not care enough to change it.

If you want to rice dunst, you just have to edit `$HOME/.config/dunst/dunstrc`

The config line related to dunst is `exec_always --no-startup-id dunst -config ~/.config/dunst/dunstr`

