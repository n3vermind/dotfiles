-------------------------------
--    "Sky" awesome theme    --
--  By Andrei "Garoth" Thorp --
-------------------------------
-- If you want SVGs and extras, get them from garoth.com/awesome/sky-theme

path = ".config/awesome/theme/"

-- BASICS
theme = {}
theme.font          = "d3euronism 12"

theme.bg_normal     = "#000000"
theme.bg_focus      = theme.bg_normal
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = theme.bg_normal
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#00bfff"
theme.fg_focus      = "#0079ff"
theme.fg_urgent     = "#ff0000"
theme.fg_minimize   = "#3672a4"

theme.border_width  = 1
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.fg_normal
theme.border_marked = theme.fg_urgent

-- IMAGES
theme.layout_fairh           = path .. "layouts/fairh.png"
theme.layout_fairv           = path .. "layouts/fairv.png"
theme.layout_floating        = path .. "layouts/floating.png"
theme.layout_magnifier       = path .. "layouts/magnifier.png"
theme.layout_max             = path .. "layouts/max.png"
theme.layout_fullscreen      = path .. "layouts/fullscreen.png"
theme.layout_tilebottom      = path .. "layouts/tilebottom.png"
theme.layout_tileleft        = path .. "layouts/tileleft.png"
theme.layout_tile            = path .. "layouts/tile.png"
theme.layout_tiletop         = path .. "layouts/tiletop.png"
theme.layout_spiral          = path .. "layouts/spiral.png"
theme.layout_dwindle         = path .. "layouts/dwindle.png"

theme.awesome_icon           = path .. "awesome-icon.png"

theme.menu_submenu_icon     = path .. "submenu.png"
theme.taglist_squares_sel   = path .. "taglist/squarefw.png"
theme.taglist_squares_unsel = path .. "taglist/squarew.png"

theme.wallpaper             = path .. "dark_explode.jpg"
theme.taglist_squares       = "true"
theme.titlebar_close_button = "true"
theme.menu_height           = 15
theme.menu_width            = 100

-- Define the image to load
theme.titlebar_close_button_normal = path .. "titlebar/close_normal.png"
theme.titlebar_close_button_focus = path .. "titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = path .. "titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = path .. "titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = path .. "titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = path .. "titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = path .. "titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = path .. "titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = path .. "titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = path .. "titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = path .. "titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = path .. "titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = path .. "titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = path .. "titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = path .. "titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = path .. "titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = path .. "titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = path .. "titlebar/maximized_focus_active.png"

return theme
