
# Dotfiles — Hyprland Rice

Showcase
https://github.com/user-attachments/assets/b25ef328-5519-4761-ac41-82d0e3ea2a86

## Stack
| Role | Tool |
|---|---|
| WM | Hyprland |
| Bar | Waybar |
| Notifications | SwayNC (nova-dark theme) |
| Launcher | Rofi |
| Theming | Matugen (Material You) |
| Terminal | Ghostty |
| Files | Nautilus |
| Wallpaper | awww |
| Clipboard | cliphist |

## Dependencies
`hyprland` `waybar` `swaync` `rofi` `matugen` `ghostty` `nautilus`
`awww` `cliphist` `wl-paste` `hyprshot` `wf-recorder` `brightnessctl`
`playerctl` `better-control` `Inter` `Rubik` fonts · `Tela-circle-green` icons

## Install
```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles && ./install.sh
```

## ⚠️ Machine-specific
Edit `hypr/modules/monitors.conf` to match your display name and resolution.
Run `hyprctl monitors` to find your display name.

## Theming
Colors are generated dynamically by **matugen** from your wallpaper:
```bash
# Change wallpaper + regenerate all colors
Super + W   (rofi wallpaper picker)
# or manually:
matugen image ~/Pictures/Wallpapers/your-wallpaper.jpg
```
EOF
