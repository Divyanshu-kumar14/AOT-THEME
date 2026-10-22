#!/bin/bash
# Omarchy theme-set hook — apps Omarchy does not tint from colors.toml.
#
# Install once:
#   omarchy hook install theme-set extras/hooks/aot-apps.sh
#
# Only runs when this theme is the selected one, so switching to another theme
# leaves these apps alone instead of repainting them with AOT colors.
set -o pipefail

THEME=${1:-}
# Repo name gives the slug: AOT-THEME -> aot-theme, omarchy-aot-theme -> aot.
[[ $THEME == "aot-theme" || $THEME == "aot" ]] || exit 0

THEME_DIR=$HOME/.local/state/omarchy/current/theme
COLORS=$THEME_DIR/colors.toml
[[ -f $COLORS ]] || exit 0

# Palette reader Omarchy itself uses; strips the leading '#' for spicetify.
hex() { omarchy-theme-color --file "$COLORS" "$1" 2>/dev/null | tr -d '#'; }

# ---------------------------------------------------------------------------
# Spotify, through spicetify. Omarchy has no contract for it, so the palette is
# written into a theme of our own instead of editing the user's active theme.
# ---------------------------------------------------------------------------
if command -v spicetify >/dev/null 2>&1 &&
  [[ -f $HOME/.config/spicetify/config-xpui.ini ]]; then
  dir=$HOME/.config/spicetify/Themes/aot
  mkdir -p "$dir"

  cat >"$dir/color.ini" <<EOF
[Base]
main                = $(hex background)
sidebar             = $(hex dark_background)
player              = $(hex darker_background)
card                = $(hex lighter_background)
shadow              = $(hex darker_background)
selected-row        = $(hex selection)
button              = $(hex accent)
button-active       = $(hex bright_red)
text                = $(hex foreground)
subtext             = $(hex muted)
notification        = $(hex accent)
notification-error  = $(hex red)
EOF

  # Square chrome, no ambient gradients — the wallpaper is already on fire.
  cat >"$dir/user.css" <<'CSS'
.main-nowPlayingBar-container {
  background-color: var(--spice-player);
  border-radius: 0;
  border-top: 1px solid var(--spice-card);
}

.Root__top-bar,
.main-topBar-background,
.main-home-filterChipsSection {
  background-color: var(--spice-main) !important;
  background-image: none !important;
  border-bottom: 1px solid var(--spice-card);
}

.main-entityHeader-backgroundColor,
.main-actionBarBackground-background,
.main-home-homeHeader {
  background-image: none !important;
  background-color: var(--spice-main) !important;
}

.main-trackList-trackListRow:hover,
.main-trackList-trackListRow.main-trackList-selected {
  background-color: var(--spice-selected-row) !important;
}

.Root__nav-bar {
  background-color: var(--spice-sidebar);
  border-right: 1px solid var(--spice-card);
}
CSS

  if spicetify config current_theme aot color_scheme Base >/dev/null 2>&1 &&
    spicetify apply --no-restart >/dev/null 2>&1; then
    # A running Spotify keeps the old colors until it restarts.
    if pgrep -x spotify >/dev/null; then
      omarchy-notification-send "Spotify repainted — restart it to see AOT" -t 3000
    fi
  fi
fi
