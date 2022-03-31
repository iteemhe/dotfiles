local wezterm = require "wezterm"

return {
    initial_cols = 100,
    initial_rows = 30,
    keys = {
        {
            key = "t",
            mods = "CMD",
            action = wezterm.action {
                SpawnCommandInNewTab = {
                    cwd = "$HOME"
                }
            }
        },
        {
            key = "#",
            mods = "CTRL|SHIFT|ALT",
            action = wezterm.action {SplitHorizontal = {domain = "CurrentPaneDomain"}}
        },
        {
            key = '$',
            mods = "CTRL|SHIFT|ALT",
            action = wezterm.action {SplitVertical = {domain = "CurrentPaneDomain"}}
        }
        -- {key = "%", mods = "SHIFT|CTRL", action = "ToggleFullScreen"},
        -- {key = "Z", mods = "CTRL", action = "TogglePaneZoomState"}
    },
    default_cwd = "/Users/jiahaohe",
    font = wezterm.font_with_fallback(
        {
            {
                family = "SauceCodePro Nerd Font Mono",
                harfbuzz_features = {"calt=0", "clig=0", "liga=0"}
            }
        }
    ),
    font_size = 26.0,
    color_scheme = "MaterialDarker",
    -- window_background_opacity = 0.90,
    window_decorations = "NONE",
    window_close_confirmation = "NeverPrompt",
    enable_tab_bar = false,
    native_macos_fullscreen_mode = true,
    unicode_version = 14,
    --  visual_bell = {
    --      fade_in_function = "EaseIn",
    --      fade_in_duration_ms = 75,
    --      fade_out_function = "EaseOut",
    --      fade_out_duration_ms = 75,
    --      -- target = "CursorColor"
    --  },
    --  colors = {
    --      visual_bell = "red"
    --  },
    window_padding = {
        left = "0",
        right = "0",
        top = "0",
        bottom = "0"
    }
}

