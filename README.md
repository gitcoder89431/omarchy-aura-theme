# Aura (Omarchy Theme)

This folder contains the Aura theme packaged for Omarchy.

## Install

Option A: copy the theme directory

```
mkdir -p ~/.config/omarchy/themes
cp -a aura ~/.config/omarchy/themes/
```

Option B: symlink from this repo

```
mkdir -p ~/.config/omarchy/themes
ln -s /path/to/aura-theme/aura ~/.config/omarchy/themes/aura
```

Then apply it:

```
~/.local/share/omarchy/bin/omarchy-theme-set aura
```

## Notes

- Update colors in `aura/colors.toml`.
- App-specific configs live in the theme folder (btop, vscode, neovim, etc).
- Wallpapers live in `aura/backgrounds/`.
