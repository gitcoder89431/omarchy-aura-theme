# Aura (Omarchy Theme)

Aura theme for Omarchy.

## Screenshots

![Aura screenshot 1](./aura-1.png)
![Aura screenshot 2](./aura-2.png)

## Install Theme

Option A: install from GitHub with Omarchy

```bash
omarchy-theme install https://github.com/gitcoder89431/aura-omarchy-theme
omarchy-theme-set aura
```

Option B: copy manually

```bash
mkdir -p ~/.config/omarchy/themes
cp -a aura ~/.config/omarchy/themes/
omarchy-theme-set aura
```

Option C: symlink for local development

```bash
mkdir -p ~/.config/omarchy/themes
ln -s /path/to/aura-omarchy-theme/aura ~/.config/omarchy/themes/aura
omarchy-theme-set aura
```

## What Is Included In `aura/`

- Core palette (`colors.toml`)
- Omarchy theme files (terminal, lockscreen, mako, walker, btop, vscode, neovim, obsidian)
- Wallpapers (`backgrounds/`)
- `waybar.css` color tokens used by Waybar styles that import `~/.config/omarchy/current/theme/waybar.css`

## Optional Extras (Non-Personal)

These are not required for the theme itself, but reproduce this setup's UI layer.

- `extras/waybar/config.jsonc`
- `extras/waybar/style.css`
- `extras/hypr/looknfeel.conf`
- `extras/fastfetch/config.jsonc`
- `extras/starship/starship.toml`

Apply extras:

```bash
mkdir -p ~/.config/hypr ~/.config/fastfetch
cp -a extras/waybar ~/.config/
cp extras/hypr/looknfeel.conf ~/.config/hypr/looknfeel.conf
cp extras/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
cp extras/starship/starship.toml ~/.config/starship.toml
omarchy-restart-waybar
hyprctl reload
```

## Notes

- Keep monitor layout (`~/.config/hypr/monitors.conf`) machine-specific.
- Tune palette in `aura/colors.toml`.
