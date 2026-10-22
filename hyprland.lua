-- Hyprland colours and behaviour for this theme.
-- Omarchy loads a theme's hyprland.lua after its defaults, so this file ships
-- both the palette and the workspace swipe.

local active_border_color = { colors = { "rgba(ff5c35ee)", "rgba(f4e8d7ee)" }, angle = 45 }
local inactive_border_color = "rgba(9c7f76aa)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})

-- macOS-like workspace switching: three fingers drag the workspace 1:1,
-- release past halfway (or flick) to commit, release short to snap back.
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

-- Slide between workspaces instead of cutting, so a keybinding switch matches
-- the motion of the gesture. Omarchy disables this leaf by default.
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "easeOutQuint" })
