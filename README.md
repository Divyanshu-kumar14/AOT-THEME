# AOT

Attack on Titan theme for [Omarchy Quattro](https://github.com/omacom/omarchy).

![AOT preview](preview.png?v=2)

## Install

```bash
omarchy theme install https://github.com/Divyanshu-kumar14/AOT-THEME
```

Then `omarchy theme set aot-theme`, or pick **Aot Theme** from the theme switcher.

## What ships

The repo root **is** the theme directory — `omarchy theme install` clones it
straight into `~/.config/omarchy/themes/<repo-name>`. No nesting, no manifest.

```
AOT-THEME/
├── colors.toml      # the whole palette — the only required file
├── hyprland.lua     # border colours + workspace swipe — see below
├── icons.theme      # GTK icon theme (Yaru-blue)
├── neovim.lua       # optional, manual use — see below
├── backgrounds/     # Eren, Mikasa, Armin, Levi, Erwin
├── preview.png      # theme switcher thumbnail
└── README.md
```

`colors.toml` is enough on its own. Omarchy generates the rest from
`/usr/share/omarchy/default/themed/*.tpl` — Alacritty, foot, Ghostty, kitty,
btop, Helix, tmux, Chromium, VS Code, Obsidian, Neovim, Hyprland, gum, keyboard
RGB and the entire Quickshell theme. Missing shades (`muted`, `selection`,
`dark_*`, `orange`, `brown`, `bright_*`) are derived, so the palette only needs
`background`, `foreground`, `accent` and the six ANSI hues.

Ship a generated file yourself only to deviate from it — a file present in the
theme directory is never overwritten by its template. `btop.theme`,
`chromium.theme`, `helix.toml`, `obsidian.css`, `shell.toml` and `keyboard.rgb`
are the ones worth overriding. `hyprland.lua` is shipped for the workspace
swipe, which also freezes its border colours: if you change `colors.toml`,
update the two colour values there to match.

## Palette

**Rumbling Dusk.** The wallpaper still sets the temperature — blood over ruined
Marley — but the first pass sampled it too literally and every ANSI hue came out
dusty. This palette keeps the world and pushes each hue to terminal chroma, with
hues spaced across the wheel so nothing collides in a diff or an `ls`:

| Role | Hex | Source |
| :--- | :--- | :--- |
| `background` | `#0b0708` | wallpaper blacks, deepened |
| `lighter_background` | `#1b1014` | glow-lit ruins |
| `foreground` | `#f4e8d7` | bone parchment, 16.6:1 |
| `accent` | `#ff5c35` | titan ember — the wallpaper red at full chroma |
| `red` | `#f0435a` | blood |
| `orange` | `#ff8a3d` | lantern fire |
| `yellow` | `#f0c04a` | brass / lamp light |
| `green` | `#4ecb71` | Survey Corps cloak in sunlight |
| `cyan` | `#3ddbd9` | titan steam |
| `blue` | `#6aa5ff` | blade steel |
| `magenta` | `#d977f2` | crystal cavern |
| `brown` | `#b07a52` | leather harness |

`foreground` on `background` is **16.6:1**, `accent` 6.5:1, and every ANSI hue
clears 4.5:1 (lowest is `red` at 5.4:1). Hues sit ~30–50° apart in OKLCH;
bright variants keep their chroma instead of washing to pastel. Checked with
`omarchy dev theme-preview` and the real template renderer on Omarchy `4.0.6-1`.

## Optional Neovim theme

`neovim.lua` configures `aether.nvim` with this exact palette for manual use.
Omarchy does not install Lua from third-party themes — it strips `*.lua` on
install and generates its own copy from `colors.toml` — so this file is here for
people who copy the repo by hand.

## Workspace swipe

`hyprland.lua` adds a macOS-like three-finger swipe: the workspace follows your
fingers horizontally, commits when you release past halfway or flick, and snaps
back if you don't. It also slides instead of cutting when you switch with a
keybinding, so both motions match.

Because the gesture lives in the theme, it is applied whenever AOT is the
current theme — no manual Hyprland edit needed. Omarchy strips `*.lua` from
themes cloned by `omarchy theme install`, so if you installed that way, copy the
`hl.gesture(...)` line into `~/.config/hypr/input.lua` and the `hl.animation(...)`
line into `~/.config/hypr/looknfeel.lua` instead.

## Optional extras

`extras/` holds support for apps Omarchy has no contract for — currently
Spotify through spicetify, plus a paste-in GTK colour block. See
[`extras/README.md`](extras/README.md). Nothing there is required to use the
theme.

## Development

Symlink the working copy so edits apply on every `omarchy theme set` without
committing or copying:

```bash
ln -s ~/build-themes/AOT-THEME ~/.config/omarchy/themes/aot-theme
omarchy theme set aot-theme
```

Backgrounds cycle with `omarchy theme bg next`. Prefix them `0-`, `1-`, `2-` to
order them; the first sorted file is the switcher preview when no `preview.png`
exists.
