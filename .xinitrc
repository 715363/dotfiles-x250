#[gnome]

#export XDG_SESSION_TYPE=x11
#export GDK_SESSION_BACKEND
#exec gnome-session

#[plasma]

#export DESKTOP_SESSION=plasma
#exec startplasma-x11

#[i3]

feh --bg-scale ~/Pictures/dracula-arch.png
exec i3

#[openbox]

#exec openbox
#exec tint2
