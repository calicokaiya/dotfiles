# Picom compositor
This is what allows us to have transparency.

## Transparency
You can change how transparent focused and unfocused windows have by editing the lines `active-opacity = 0.95` and `inactive-opacity = 0.90`.

## Blur
I use dual\_kawase for blur method because it works, is simple to configure, and is fast. You can edit this in the `blur_method = dual_kawase` line.

For dual\_kawase to work, you will have to use glx as a backend. This is set in the `backend = "glx"` line. Default value is `xrender`. **In order to use the glx backend, you must launch picom with the `--experimental-backends` argument**

You can configure how much blur you have by editing the `blur-strength = 4` line.

Using blur is important if you are using transparency because it makes everything way more visible. Even a very weak blur helps.
