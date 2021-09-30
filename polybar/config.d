[colors]
;background = ${xrdb:color0:#222}
background = #1a1c1e
background-alt = #444
;foreground = ${xrdb:color7:#222}
foreground = #ffffff
foreground-alt = #abb2bf
primary = 
secondary = 
alert = 

[bar/example]
;monitor = ${env:MONITOR:HDMI-1}
width = 100%
height = 21
;offset-x = 1%
;offset-y = 1%
radius = 0
fixed-center = true

background = ${colors.background} 
foreground = ${colors.foreground}

line-size = 3
line-color = #f00

border-size = 0
border-color = #00000000

padding-left = 0
padding-right = 0

module-margin-left = 0
module-margin-right = 0

font-0 = "UbuntuMono Nerd Font:size=10;2"
font-1 = "UbuntuMono Nerd Font:size=16;3"
font-2 = "Font Awesome 5 Free:style=Regular:pixelsize=8;1"
font-3 = "Font Awesome 5 Free:style=Solid:pixelsize=8;1"
font-4 = "Font Awesome 5 Brands:pixelsize=8;1"

modules-left = i3 arrowblank arrow7 xwindow arrow8
modules-center = 
modules-right = arrow1 memory arrow2 cpu arrow3 battery arrow5 date arrow6

tray-position = right
tray-padding = 2
tray-background = #bc5068
tray-reparent = true

;wm-restack = bspwm
;wm-restack = i3

;override-redirect = true

;scroll-up = bspwm-desknext
;scroll-down = bspwm-deskprev

;scroll-up = i3wm-wsnext
;scroll-down = i3wm-wsprev

cursor-click = pointer
cursor-scroll = ns-resize

[module/xwindow]
type = internal/xwindow
label = %title:0:30:...%
format-background = #362d58

[module/xkeyboard]
type = internal/xkeyboard
blacklist-0 = num lock

format-prefix = " "
format-prefix-foreground = ${colors.foreground-alt}
format-prefix-underline = ${colors.secondary}

label-layout = %layout%
label-layout-underline = ${colors.secondary}

label-indicator-padding = 2
label-indicator-margin = 1
label-indicator-background = ${colors.secondary}
label-indicator-underline = ${colors.secondary}

[module/filesystem]
type = internal/fs
interval = 25

mount-0 = /

label-mounted = %{F#0a81f5}%mountpoint%%{F-}: %percentage_used%%
label-unmounted = %mountpoint% not mounted
label-unmounted-foreground = ${colors.foreground-alt}

[module/bspwm]
type = internal/bspwm

label-focused = %index%
label-focused-background = ${colors.background-alt}
label-focused-underline= ${colors.primary}
label-focused-padding = 2

label-occupied = %index%
label-occupied-padding = 2

label-urgent = %index%!
label-urgent-background = ${colors.alert}
label-urgent-padding = 2

label-empty = %index%
label-empty-foreground = ${colors.foreground-alt}
label-empty-padding = 2

; Separator in between workspaces
; label-separator = |

[module/i3]
type = internal/i3
format = <label-state> <label-mode>
index-sort = true
wrapping-scroll = false

; Only show workspaces on the same output as the bar
;pin-workspaces = true

label-mode-padding = 2
label-mode-foreground = ${colors.foreground}
label-mode-background = #bc5068

; focused = Active workspace on focused monitor
label-focused = %index%
label-focused-background = #824b68
label-focused-underline = #757da9
label-focused-padding = 2

; unfocused = Inactive workspace on any monitor
label-unfocused = %index%
label-unfocused-padding = 2
label-unfocused-background = #bc5068

; visible = Active workspace on unfocused monitor
label-visible = %index%
label-visible-background = #bc5068
label-visible-padding = 0

; urgent = Workspace with urgency hint set
label-urgent = %index%
label-urgent-background = #bc5068
label-urgent-padding = 2

; Separator in between workspaces
; label-separator = |


[module/mpd]
type = internal/mpd
format-online = <label-song>  <icon-prev> <icon-stop> <toggle> <icon-next>

icon-prev = 
icon-stop = 
icon-play = 
icon-pause = 
icon-next = 

label-song-maxlen = 25
label-song-ellipsis = true

[module/xbacklight]
type = internal/xbacklight

format = <label> <bar>
label = BL

bar-width = 10
bar-indicator = |
bar-indicator-foreground = #fff
bar-indicator-font = 2
bar-fill = ─
bar-fill-font = 2
bar-fill-foreground = #9f78e1
bar-empty = ─
bar-empty-font = 2
bar-empty-foreground = ${colors.foreground-alt}

[module/backlight-acpi]
inherit = module/xbacklight
type = internal/backlight
card = intel_backlight

[module/cpu]
type = internal/cpu
interval = 2
#format-prefix = CPU:
#format-prefix-foreground = ${colors.foreground-alt}
format-underline =
label =CPU: %percentage:2%%
format-background = #bc5068

[module/memory]
type = internal/memory
interval = 2
#format-prefix = " "
#format-prefix-foreground = ${colors.foreground-alt}
#format-underline = #4bffdc
label =RAM: %percentage_used%%
format-background = #bc5068

[module/wlan]
type = internal/network
interface = net1
interval = 3.0

format-connected = <ramp-signal> <label-connected>
format-connected-underline = #9f78e1
label-connected = %essid%

format-disconnected =
;format-disconnected = <label-disconnected>
;format-disconnected-underline = ${self.format-connected-underline}
;label-disconnected = %ifname% disconnected
;label-disconnected-foreground = ${colors.foreground-alt}

ramp-signal-0 = 
ramp-signal-1 = 
ramp-signal-2 = 
ramp-signal-3 = 
ramp-signal-4 = 
ramp-signal-foreground = ${colors.foreground-alt}

[module/eth]
type = internal/network
interface = eno1
interval = 3.0

format-connected-underline = #55aa55
format-connected-prefix = " "
format-connected-prefix-foreground = ${colors.foreground-alt}
label-connected = %local_ip%

format-disconnected =
;format-disconnected = <label-disconnected>
;format-disconnected-underline = ${self.format-connected-underline}
;label-disconnected = %ifname% disconnected
;label-disconnected-foreground = ${colors.foreground-alt}

[module/date]
type = internal/date
interval = 5
date = " %a %b %d %Y"
date-alt = " %a %b %d %Y"
time = %l:%M%p
time-alt = %l:%M%p
format-background = #362d58
format-foreground = #bc5068
label = "%date% %time% "

[module/pulseaudio]
type = internal/pulseaudio

format-volume = <label-volume> <bar-volume>
label-volume = VOL %percentage%%
label-volume-foreground = ${root.foreground}

label-muted = 🔇 muted
label-muted-foreground = #666

bar-volume-width = 10
bar-volume-foreground-0 = #55aa55
bar-volume-foreground-1 = #55aa55
bar-volume-foreground-2 = #55aa55
bar-volume-foreground-3 = #55aa55
bar-volume-foreground-4 = #55aa55
bar-volume-foreground-5 = #f5a70a
bar-volume-foreground-6 = #ff5555
bar-volume-gradient = false
bar-volume-indicator = |
bar-volume-indicator-font = 2
bar-volume-fill = ─
bar-volume-fill-font = 2
bar-volume-empty = ─
bar-volume-empty-font = 2
bar-volume-empty-foreground = ${colors.foreground-alt}

[module/alsa]
type = internal/alsa

format-volume = <label-volume> <bar-volume>
label-volume = VOL
label-volume-foreground = ${root.foreground}

format-muted-prefix = " "
format-muted-foreground = ${colors.foreground-alt}
label-muted = sound muted

bar-volume-width = 10
bar-volume-foreground-0 = #55aa55
bar-volume-foreground-1 = #55aa55
bar-volume-foreground-2 = #55aa55
bar-volume-foreground-3 = #55aa55
bar-volume-foreground-4 = #55aa55
bar-volume-foreground-5 = #f5a70a
bar-volume-foreground-6 = #ff5555
bar-volume-gradient = false
bar-volume-indicator = |
bar-volume-indicator-font = 2
bar-volume-fill = ─
bar-volume-fill-font = 2
bar-volume-empty = ─
bar-volume-empty-font = 2
bar-volume-empty-foreground = ${colors.foreground-alt}

[module/battery]
type = internal/battery
battery = BAT0
adapter = AC0
full-at = 100

format-charging = <animation-charging> <label-charging>
label-charging =  charging: %percentage%%
format-charging-foreground = ${colors.foreground}
format-charging-background = #362d58
#format-charging-underline = #00a3c725

format-discharging = <ramp-capacity> <label-discharging>
label-discharging = discharing %percentage%%
format-discharging-underline = #00c7ae20
format-discharging-foreground =  ${colors.foreground}
format-discharging-background = #447999

format-full-prefix = "fullpower "
format-full-prefix-foreground = #bc5068
format-full-underline = #00a3c725
format-full-foreground = ${color.foreground}
format-full-background = #362d58

ramp-capacity-0 = 
ramp-capacity-1 = 
ramp-capacity-2 = 
ramp-capacity-3 = 
ramp-capacity-4 = 
ramp-capacity-foreground = #384a61

animation-charging-0 = 
animation-charging-1 = 
animation-charging-2 = 
animation-charging-3 = 
animation-charging-4 = 
animation-charging-foreground = #384a61
animation-charging-framerate = 750

[module/temperature]
type = internal/temperature
thermal-zone = 0
warn-temperature = 60

format = <ramp> <label>
format-underline = #f50a4d
format-warn = <ramp> <label-warn>
format-warn-underline = ${self.format-underline}

label = %temperature-c%
label-warn = %temperature-c%
label-warn-foreground = ${colors.secondary}

ramp-0 = 
ramp-1 = 
ramp-2 = 
ramp-foreground = ${colors.foreground-alt}

[module/powermenu]
type = custom/menu

expand-right = true

format-spacing = 1

label-open = 
label-open-foreground = ${colors.secondary}
label-close =  cancel
label-close-foreground = ${colors.secondary}
label-separator = |
label-separator-foreground = ${colors.foreground-alt}

menu-0-0 = reboot
menu-0-0-exec = menu-open-1
menu-0-1 = power off
menu-0-1-exec = menu-open-2

menu-1-0 = cancel
menu-1-0-exec = menu-open-0
menu-1-1 = reboot
menu-1-1-exec = sudo reboot

menu-2-0 = power off
menu-2-0-exec = sudo poweroff
menu-2-1 = cancel
menu-2-1-exec = menu-open-0

[settings]
screenchange-reload = true
;compositing-background = xor
;compositing-background = screen
;compositing-foreground = source
;compositing-border = over
;pseudo-transparency = false

[global/wm]
margin-top = 5
margin-bottom = 5

; vim:ft=dosini

######### arrow #############

[module/arrow1]
type = custom/text
content = "%{T2} %{T-}"
content-font = 2
content-foreground = #bc5068
content-background = #1a1c1e

[module/arrow2]
type = custom/text
content = "%{T2} %{T-}"
content-font = 2
content-foreground = #bc5068
content-background = #bc5068

[module/arrow3]
type = custom/text
content = "%{T2} %{T-}"
content-font = 2
content-foreground = #362d58
content-background = #bc5068

[module/arrow5]
type = custom/text
content = "%{T2} %{T-}"
content-font = 4
content-foreground = #bc5068
content-background = #362d58

[module/arrow6]
type = custom/text
content = "%{T2} %{T-}"
content-font = 2
content-foreground = #bc5068
content-background = #362d58

[module/arrow7]
type= custom/text
content = "%{T2} %{T-}"
content-font = 2
content-foreground = #bc5068
content-background = #362d58

[module/arrowblank]
type= custom/text
content = "%{T2}%{T-}"
content-font = 2
content-foreground = #bc5068
content-background = #bc5068

[module/arrow8]
type = custom/text
content = "%{T2} %{T-}"
content-font = 2
content-foreground = #362d58
content-background = #1a1c1e

