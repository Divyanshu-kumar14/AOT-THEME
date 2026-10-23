# AOT

Attack on Titan theme for [Omarchy Quattro](https://github.com/omacom/omarchy).

![AOT preview](preview.png?v=2)

## Install

Omarchy will not stage `*.lua` from a git-cloned theme, so a plain
`omarchy theme install` gives you the palette but drops the workspace swipe,
window blur and Hyprland border colours. Clone outside the themes directory and
symlink it in instead — everything ships:

```bash
git clone https://github.com/Divyanshu-kumar14/AOT-THEME ~/.local/share/aot-theme
mkdir -p ~/.config/omarchy/themes
ln -sfn ~/.local/share/aot-theme ~/.config/omarchy/themes/aot-theme
omarchy theme set aot-theme
```

Then pick **Aot Theme** in the theme switcher.

If `~/.config/omarchy/themes/aot-theme` already exists as a real directory from
a previous `omarchy theme install`, move it aside first so the symlink can take
the name (skip this if it is already a symlink):

```bash
mv ~/.config/omarchy/themes/aot-theme ~/.config/omarchy/themes/aot-theme.bak
```

On a fresh machine, palette only, no Lua additions:

```bash
omarchy theme install https://github.com/Divyanshu-kumar14/AOT-THEME
```

See
[If you installed with `omarchy theme install`](#if-you-installed-with-omarchy-theme-install)
for the manual copy commands.

## What ships

The repo root **is** the theme directory. Cloning it outside the themes
directory and symlinking it into `~/.config/omarchy/themes/` is the full-feature
install; `omarchy theme install` clones it directly but stages the palette only.
No nesting, no manifest.

```
AOT-THEME/
├── colors.toml             # the whole palette — the only required file
├── colors-armin.toml       # variant: misty sky / soft blue palette (Armin)
├── colors-erwin.toml       # variant: brass / gold palette (Erwin)
├── colors-levi.toml        # variant: cooler steel / blade palette (Levi)
├── colors-mikasa.toml      # variant: deep blood / black palette (Mikasa)
├── colors-eren.toml        # variant: burning crimson / deep black palette (Eren)
├── hyprland.lua            # border colours, workspace swipe, blur — see below
├── icons.theme             # GTK icon theme (Yaru-blue)
├── neovim.lua              # optional, manual use — see below
├── shell.toml              # Quickshell override — OSD, lock screen, borders
├── vscode-theme.json.tpl   # VS Code theme template (overrides Omarchy default)
├── backgrounds/            # Eren, Mikasa, Armin, Levi, Erwin
├── preview.png             # theme switcher thumbnail
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
swipe, frosted-glass blur and border colours; the border values are frozen, so
if you change `colors.toml`, update the two colour values there to match.

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

## Hyprland additions

`hyprland.lua` adds three things whenever AOT is the current theme: the
workspace swipe, window blur with transparency, and border colours matched to
the palette.

### Workspace swipe

A macOS-like three-finger swipe: the workspace follows your fingers
horizontally, commits when you release past halfway or flick, and snaps back if
you don't. It also slides instead of cutting when you switch with a keybinding,
so both motions match.

### Blur and transparency

Windows sit at 0.94 opacity when active and 0.88 when inactive, with the
wallpaper blurred behind them (`size = 8`, `passes = 3`, popups included).
Fullscreen stays opaque at 1.0, so video and full-screen terminals keep their
contrast.

Omarchy's own window rules keep browsers at `1.0 0.985`, so browser windows stay
effectively opaque — deliberate, so video pages don't sit behind a blur.

Tune the values in `hyprland.lua` and re-apply (adjust the path if you cloned
elsewhere):

```bash
$EDITOR ~/.local/share/aot-theme/hyprland.lua
omarchy theme set aot-theme
```

To turn blur off, set `enabled = false` in the `blur` block — or remove the
whole `hl.config({ decoration = ... })` block — and re-apply.

### If you installed with `omarchy theme install`

That command leaves a `.git` directory in the theme, and Omarchy will not stage
`*.lua` from a git-cloned theme. The palette still applies; the three additions
above do not. Use the symlink install, or copy the blocks into your own config
and reload Hyprland yourself.

`~/.config/hypr/looknfeel.lua`:

```lua
hl.config({
  decoration = {
    active_opacity = 0.94,
    inactive_opacity = 0.88,
    fullscreen_opacity = 1.0,
    blur = {
      enabled = true,
      size = 8,
      passes = 3,
      new_optimizations = true,
      ignore_opacity = true,
      xray = false,
      popups = true,
    },
  },
})

hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "easeOutQuint" })
```

`~/.config/hypr/input.lua`:

```lua
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
```

Then reload:

```bash
hyprctl reload
```

The border colours are optional; Hyprland is already themed from `colors.toml`,
so skip them unless you want the exact `#ff5c35` / `#f4e8d7` gradient.

These edits live in your own config, so they stay active after you switch to a
different theme. The theme's own copy applies only while AOT is current.

## Optional extras

`extras/` holds support for apps Omarchy has no contract for — currently
Spotify through spicetify, plus a paste-in GTK colour block. See
[`extras/README.md`](extras/README.md). Nothing there is required to use the
theme.

## VS Code theme

`vscode-theme.json.tpl` ships an improved Omarchy VS Code color theme template that uses more of the AOT palette — brown comments, magenta keywords, cyan parameters, blue functions, green strings, orange numbers, yellow classes, and distinct colors for each semantic token type instead of the default's heavy red bias.

Omarchy generates `vscode-theme.json` from `colors.toml` and symlinks it into the `omarchy-theme` extension automatically on `omarchy theme set`. Ship your own `vscode-theme.json.tpl` next to `colors.toml` to override the generated colors — Omarchy will not overwrite a file that's already present.

Activate a variant palette first (see Variants below), then:

```bash
omarchy theme set aot-theme
```

Reload VS Code (`Ctrl+Shift+P` → "Developer: Reload Window") to pick up the new colors.

## Variants

`colors.toml` is the default "Rumbling Dusk" palette. Three character variants
ship alongside it — copy the one you want over `colors.toml` and re-apply:

| Variant | File | Signature accent | Mood |
|---------|------|------------------|------|
| Default | `colors.toml` | `#ff5c35` titan ember | Blood, ember, steam |
| Levi | `colors-levi.toml` | `#6aa5ff` blade steel | Cooler, reconnaissance |
| Erwin | `colors-erwin.toml` | `#f0c04a` brass | Command, lantern gold |
| Mikasa | `colors-mikasa.toml` | `#f0435a` blood red | Deep contrast, aggressive |
| Armin | `colors-armin.toml` | `#7fb3d5` soft sky blue | Misty, cool, strategic |
| Eren | `colors-eren.toml` | `#ff3b2c` burning crimson | Fierce, burning, aggressive |

```bash
cp colors-armin.toml colors.toml   # or colors-eren.toml / colors-levi.toml / ...
omarchy theme set aot-theme
```

Each variant includes its own `hyprland_active_border` gradient so the window
borders match the new accent.

## Development

Symlink the working copy so edits apply on every `omarchy theme set` without
committing or copying:

```bash
ln -s /path/to/AOT-THEME ~/.config/omarchy/themes/aot-theme
omarchy theme set aot-theme
```

Backgrounds cycle with `omarchy theme bg next`. Prefix them `0-`, `1-`, `2-` to
order them; the first sorted file is the switcher preview when no `preview.png`
exists.
