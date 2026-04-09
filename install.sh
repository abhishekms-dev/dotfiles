#!/usr/bin/env bash
DOTS="$HOME/dotfiles"
CFG="$HOME/.config"

echo "Linking dotfiles..."

# Hyprland
mkdir -p "$CFG/hypr/modules" "$CFG/hypr/scripts"
ln -sf "$DOTS/hypr/hyprland.conf" "$CFG/hypr/hyprland.conf"
for f in "$DOTS/hypr/modules/"*.conf; do
  ln -sf "$f" "$CFG/hypr/modules/$(basename $f)"
done
ln -sf "$DOTS/hypr/scripts/screenrecord.sh" "$CFG/hypr/scripts/screenrecord.sh"
chmod +x "$DOTS/hypr/scripts/screenrecord.sh"

# Waybar
mkdir -p "$CFG/waybar/scripts"
ln -sf "$DOTS/waybar/config.jsonc" "$CFG/waybar/config.jsonc"
ln -sf "$DOTS/waybar/style.css"    "$CFG/waybar/style.css"
ln -sf "$DOTS/waybar/colors.css"   "$CFG/waybar/colors.css"
ln -sf "$DOTS/waybar/scripts/launch.sh" "$CFG/waybar/scripts/launch.sh"
chmod +x "$DOTS/waybar/scripts/launch.sh"

# Swaync
mkdir -p "$CFG/swaync/colors" "$CFG/swaync/themes/nova-dark"
ln -sf "$DOTS/swaync/config.json" "$CFG/swaync/config.json"
ln -sf "$DOTS/swaync/style.css"   "$CFG/swaync/style.css"
ln -sf "$DOTS/swaync/colors/colors.css" "$CFG/swaync/colors/colors.css"
ln -sf "$DOTS/swaync/themes/nova-dark/notifications.css"   "$CFG/swaync/themes/nova-dark/notifications.css"
ln -sf "$DOTS/swaync/themes/nova-dark/central_control.css" "$CFG/swaync/themes/nova-dark/central_control.css"

# Rofi
mkdir -p "$CFG/rofi/scripts" "$CFG/rofi/powermenu"
for f in "$DOTS/rofi/"*.rasi; do
  ln -sf "$f" "$CFG/rofi/$(basename $f)"
done
ln -sf "$DOTS/rofi/scripts/launcher.sh"  "$CFG/rofi/launcher.sh"
ln -sf "$DOTS/rofi/scripts/selector.sh"  "$CFG/rofi/selector.sh"
ln -sf "$DOTS/rofi/powermenu/powermenu.sh" "$CFG/rofi/powermenu/powermenu.sh"
ln -sf "$DOTS/rofi/powermenu/style-2.rasi" "$CFG/rofi/powermenu/style-2.rasi"
chmod +x "$DOTS/rofi/scripts/"*.sh "$DOTS/rofi/powermenu/powermenu.sh"

# Matugen
mkdir -p "$CFG/matugen/templates"
ln -sf "$DOTS/matugen/config.toml" "$CFG/matugen/config.toml"
for f in "$DOTS/matugen/templates/"*; do
  ln -sf "$f" "$CFG/matugen/templates/$(basename $f)"
done

# Font
mkdir -p "$HOME/.local/share/fonts"
cp "$DOTS/fonts/"*.ttf "$HOME/.local/share/fonts/"
fc-cache -fv

echo ""
echo "✓ Done! Next steps:"
echo "  1. Edit hypr/modules/monitors.conf for your display"
echo "  2. Run: matugen image ~/Pictures/Wallpapers/<wallpaper> to apply colors"
echo "  3. Run: ~/.config/waybar/scripts/launch.sh to start the bar"
