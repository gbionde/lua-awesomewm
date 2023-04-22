-- vars
local home = os.getenv("HOME")

local theme_assets = require("beautiful.theme_assets");
local xresources = require("beautiful.xresources");
local dpi = xresources.apply_dpi;

local gfs = require("gears.filesystem");
local themes_path = gfs.get_themes_dir();


local theme = {

    -- fonts
    font          = "sans 6",
    
    -- background
    bg_normal     = "#282828",
    bg_focus      = "#3c3836",
    bg_urgent     = "#fb4934",
    bg_minimize   = "#282828",
    bg_systray    = bg_normal,

    -- foreground
    fg_normal     = "#ebdbb2",
    fg_focus      = "#ebdbb2",
    fg_urgent     = "#ebdbb2",
    fg_minimize   = "#ebdbb2",

    -- gap 
    useless_gap   = dpi(10),

    -- borders
    border_width  = dpi(0),
    border_normal = "#282828",
    border_focus  = "#fabd2f",
    border_marked = "#fb4934",

    -- menu
    menu_height = dpi(25),
    menu_width  = dpi(135),

    -- icon theme for application icons. 
    -- if not set then the icons from /usr/share/icons and /usr/share/icons/hicolor will be used.
    icon_theme = nil,

    -- wallpaper
    wallpaper = home .. "/pictures/wallpaper/gruv-girl.png",
}

-- Generate taglist squares:
local taglist_square_size = dpi(2)

theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)

theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

return theme