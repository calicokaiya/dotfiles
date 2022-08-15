# Terminals
| Terminal | Config file |
|---------|---------|
| Alacritty | alacritty.yml |
| st | config.h |
| Kitty | [Cattpuccin Moccha](https://github.com/catppuccin/kitty)|
| rxvt-unicode | .Xresources |

### Alacritty
Place alacritty.yml in `~/.config/alacritty/`
Colors are [Catppuccin macchiato](https://github.com/catppuccin/alacritty).

### St
Place config.h on your St source code folder, and run `make install`
#### Dependencies:
- [Fantasque font](https://aur.archlinux.org/packages/ttf-fantasque-sans-git) (can install via AUR)

Colors are [Catppuccin macchiato](https://github.com/catppuccin/alacritty)

#### Problems:
- If st crashes trying to display emojis, installing [libxft-bgra](https://aur.archlinux.org/packages/libxft-bgra) from the AUR should fix it.
- Emojis and unicode characters might display slightly cut

### Kitty
No dotfile included, as it is basically just default with [Cattpuccin Moccha](https://github.com/catppuccin/kitty) installed.

### rxvt-unicode
Place .Xresources in `$HOME/`
#### Dependencies:
- [SourceCodePro](https://github.com/adobe-fonts/source-code-pro) (can install via AUR)

Colors are from [Cattpuccin Moccha)](https://github.com/catppuccin/urxvt)

#### Problems:
- Unicode does not load properly on any fonts.
If you know how to fix it, please make a pull request.

## Screenshots
### Alacritty
![alacritty](https://i.imgur.com/eJyAUQ3.png)

### St
![st](https://i.imgur.com/wuZj0Q6.png)

### Kitty
![kitty](https://i.imgur.com/fplleam.png)

### rxvt-unicode
![urxvt](https://i.imgur.com/Bczo4Vn.png)
