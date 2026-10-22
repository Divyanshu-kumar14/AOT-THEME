return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#0b0708",
        dark_bg = "#070405",
        darker_bg = "#040203",
        lighter_bg = "#1b1014",

        fg = "#f4e8d7",
        dark_fg = "#9c7f76",
        light_fg = "#fbf2e4",
        bright_fg = "#fffaef",
        muted = "#9c7f76",

        red = "#f0435a",
        yellow = "#f0c04a",
        orange = "#ff8a3d",
        green = "#4ecb71",
        cyan = "#3ddbd9",
        blue = "#6aa5ff",
        magenta = "#d977f2",
        brown = "#b07a52",

        bright_red = "#ff6b7a",
        bright_yellow = "#ffdb6e",
        bright_green = "#6cf08c",
        bright_cyan = "#5ff5ef",
        bright_blue = "#8fb8ff",
        bright_magenta = "#f09bff",

        accent = "#ff5c35",
        cursor = "#fffaef",
        foreground = "#f4e8d7",
        background = "#0b0708",
        selection = "#401a20",
        selection_foreground = "#fffaef",
        selection_background = "#401a20",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
