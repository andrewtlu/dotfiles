# dotfiles
I use arch btw 🤓

### Hyprland Tooling

* hypridle
* hyprlock
* hyprpaper
* hyprpicker
* hyprpolkitagent
* hyprshot
* nvidia
* swaync
* waybar

### Other Stuff

* impala
* oh-my-zsh
* p10k
* pipewire
* pywal16
* stow
* wireplumber
* wofi
* zsh

### Info

Learning Arch rn and figured might as well stow my dotfiles so that I can transfer to my laptop easily.

Uses pywal because pywal is goated. `dark-colors.json` and `light-colors.json` are custom colors that should be used by pywal via `wal --theme ~/.config/dark-colors.json` or `wal --theme ~/.config/light-colors.json`.

## Color Definitions for Styling

Pywal only uses 16 colors, so not all of these are used, but here are some helpful definitions. Colors ripped from [here](https://github.com/morhetz/gruvbox?tab=readme-ov-file).

### Dark Mode

![dark mode colors](https://camo.githubusercontent.com/3dfae3155f4ad996e105584d9ff884ad9b8a93c20b4c2eaad0ce226c680e58e2/687474703a2f2f692e696d6775722e636f6d2f776136363678672e706e67)

```css
/* Main color palette */
@define-color bg #282828;
@define-color red #cc241d;
@define-color green #98971a;
@define-color yellow #d79921;
@define-color blue #458588;
@define-color purple #b16286;
@define-color aqua #689d6a;
@define-color gray #a89984;

/* Bright variants */
@define-color gray_bold #928374;
@define-color red_bold #fb4934;
@define-color green_bold #b8bb26;
@define-color yellow_bold #fabd2f;
@define-color blue_bold #83a598;
@define-color purple_bold #d3869b;
@define-color aqua_bold #8ec07c;
@define-color fg #ebdbb2;

/* Background variants */
@define-color bg0_h #1d2021;
@define-color bg0 #282828;
@define-color bg1 #3c3836;
@define-color bg2 #504945;
@define-color bg3 #665c54;
@define-color bg4 #7c6f64;
@define-color gray_alt #928374;
@define-color orange #d65d0e;

/* Foreground variants */
@define-color bg0_s #32302f;
@define-color fg4 #a89984;
@define-color fg3 #bdae93;
@define-color fg2 #d5c4a1;
@define-color fg1 #ebdbb2;
@define-color fg0 #fbf1c7;
@define-color orange_bold #fe8019;
```

### Light Mode

![light mode colors](https://camo.githubusercontent.com/8c93d719f229b9521e88c69f89ad712ab542fb583065310ae20fa898ab7261b1/687474703a2f2f692e696d6775722e636f6d2f3439714b7959572e706e67)

```css
/* Main color palette */
@define-color bg #fbf1c7;
@define-color red #cc241d;
@define-color green #98971a;
@define-color yellow #d79921;
@define-color blue #458588;
@define-color purple #b16286;
@define-color aqua #689d6a;
@define-color gray #7c6f64;

/* Darker variants */
@define-color gray_bold #928374;
@define-color red_bold #9d0006;
@define-color green_bold #79740e;
@define-color yellow_bold #b57614;
@define-color blue_bold #076678;
@define-color purple_bold #8f3f71;
@define-color aqua_bold #427b58;
@define-color fg #3c3836;

/* Background variants */
@define-color bg0_h #f9f5d7;
@define-color bg0 #fbf1c7;
@define-color bg1 #ebdbb2;
@define-color bg2 #d5c4a1;
@define-color bg3 #bdae93;
@define-color bg4 #a89984;
@define-color gray_alt #928374;
@define-color orange #d65d0e;

/* Foreground variants */
@define-color bg0_s #f2e5bc;
@define-color fg4 #7c6f64;
@define-color fg3 #665c54;
@define-color fg2 #504945;
@define-color fg1 #3c3836;
@define-color fg0 #282828;
@define-color orange_bold #af3a03;
```


