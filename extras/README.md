# Extras

Support for apps Omarchy has no theme contract for. Nothing here is required to
use the theme — `colors.toml` alone covers everything Omarchy generates.

## What Omarchy already tints

Do nothing, this is automatic on every `omarchy theme set`:

| Surface | Mechanism |
| :--- | :--- |
| Alacritty, foot, Ghostty, kitty | generated terminal config |
| btop, Helix, tmux | generated config |
| Neovim | `aether.nvim` injected with this palette |
| VS Code, VSCodium, Cursor | local `omarchy-theme` extension built from the palette |
| Chromium, Chrome, Edge, Brave | toolbar colour via browser policy |
| Obsidian | `theme.css` written into every vault |
| Claude Code, pi, t3code, hermes | generated JSON/YAML |
| Hyprland borders, shell, lock, OSD, launcher | generated `hyprland.lua` / `shell.toml` |
| GTK apps | dark mode + `icons.theme` only — see below for colour |

## Spotify

`hooks/aot-apps.sh` writes a spicetify theme from `colors.toml` and applies it.
It is a `theme-set` hook, so it runs on every theme switch but only acts when AOT
is the selected theme.

```bash
omarchy hook install theme-set extras/hooks/aot-apps.sh
omarchy theme set aot-theme
```

Requires spicetify already set up for your Spotify install (`spicetify backup
apply` once). A running Spotify keeps the old colours until restarted — the hook
notifies you when that happens. `spicetify apply --no-restart` is deliberate: a
theme switch should not kill your music.

## GTK colour

Omarchy sets Adwaita dark and the icon theme; it does not push the palette into
GTK. To recolour Nautilus, file choosers and GTK apps, copy
`gtk/aot-colors.css` next to your GTK config and import it — do not replace the
theme you already run:

```bash
cp extras/gtk/aot-colors.css ~/.config/gtk-3.0/
cp extras/gtk/aot-colors.css ~/.config/gtk-4.0/
printf '@import url("aot-colors.css");\n' >> ~/.config/gtk-3.0/gtk.css
printf '@import url("aot-colors.css");\n' >> ~/.config/gtk-4.0/gtk.css
```

It only remaps named colours, no widget or spacing rules, so it layers over
whatever GTK theme is active.

## Not covered

| App | Why |
| :--- | :--- |
| Discord | Official client ignores themes; needs Vencord or BetterDiscord, neither installed. |
| Firefox | Browser chrome follows the GTK theme; page colours follow the site. No palette hook exists. |
| Zed | Reads its own theme JSON, not `colors.toml`. No Zed install on this machine to justify shipping one. |
| Steam, Heroic, Zellij, Cava | Not installed. |
