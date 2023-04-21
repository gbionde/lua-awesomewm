-- Home env variable
local home = os.getenv("HOME")

local theme_assets = require("beautiful.theme_assets");
local xresources = require("beautiful.xresources");
local dpi = xresources.apply_dpi;

local gfs = require("gears.filesystem");
local themes_path = gfs.get_themes_dir();


local theme = {

    -- fonts
    font          = "sans 10",
    
    -- background
    bg_normal     = "#3E445E",
    bg_focus      = "#3E445E",
    bg_urgent     = "#FF0000",
    bg_minimize   = "#3E445E",
    bg_systray    = bg_normal,

    -- foreground
    fg_normal     = "#D6DEEB",
    fg_focus      = "#D6DEEB",
    fg_urgent     = "#ffffff",
    fg_minimize   = "#ffffff",
    
    -- gap and borders
    useless_gap   = dpi(10),
    border_width  = dpi(0),
    border_normal = "#292D3E",
    border_focus  = "#78DCE8",
    border_marked = "#91231c"

}

-- Generate taglist squares:
local taglist_square_size = dpi(4)

theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)

theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming the menu:
-- theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(25)
theme.menu_width  = dpi(135)

-- Define the image to load
theme.wallpaper = home .. "/Pictures/Wallpaper/kanagawa-wave.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme