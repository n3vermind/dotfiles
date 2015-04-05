[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
compton --backend glx --paint-on-overlay --vsync opengl &
exec awesome
