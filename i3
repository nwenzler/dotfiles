# This file has been auto-generated by i3-config-wizard(1).
# It will not be overwritten, so edit it as you like.
#
# Should you change your keyboard layout some time, delete
# this file and re-run i3-config-wizard(1).
#

# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!
###############################################################################

# Mod Key
set $mod Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
# Change Font size if you want the titles back
font pango:DejaVu Sans Mono Bold 0

for_window[class="Chromium"] border pixel 0
for_window[class="Spotify"] border pixel 0
for_window[class="^.*"] border pixel 3


# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal (here: termite)
bindsym $mod+Return exec termite

# kill focused window
bindsym $mod+Shift+q kill

# start program launcher (here rofi)
bindsym $mod+d exec rofi -show run -width 25 -lines 4 -opacity "80" -bw 4


# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+j focus left
bindsym $mod+k focus down
bindsym $mod+l focus up
bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+j move left
bindsym $mod+Shift+k move down
bindsym $mod+Shift+l move up
bindsym $mod+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# Workspace variables
#set $workspace1 "Terminals"
#set $workspace2 "Browser"
#set $workspace3 "Chats"
#set $workspace4 "Music"

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+0 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace 1
bindsym $mod+Shift+2 move container to workspace 2
bindsym $mod+Shift+3 move container to workspace 3
bindsym $mod+Shift+4 move container to workspace 4
bindsym $mod+Shift+5 move container to workspace 5
bindsym $mod+Shift+6 move container to workspace 6
bindsym $mod+Shift+7 move container to workspace 7
bindsym $mod+Shift+8 move container to workspace 8
bindsym $mod+Shift+9 move container to workspace 9
bindsym $mod+Shift+0 move container to workspace 10

# Binding applications to workspaces
# TODO: open application, type xprop, navigate cursor, wm_class second value, assigh [class="name"] $workspacenumber

# reload the configuration file
bindsym $mod+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym $mod+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window’s width.
        # Pressing right will grow the window’s width.
        # Pressing up will shrink the window’s height.
        # Pressing down will grow the window’s height.
        bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym semicolon resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym $mod+r mode "resize"

### Color Scheme ###

set $pink #D75F87

#Variables
#set $bg-color			$pink-color
#set $inactive-bg-color		$pink-color
#set $border-color		$pink-color
#set $inactive-border-color	$pink-color
set $text-color		#FFCC00
#set $inactive-text-color	#888888
#set $urgent-color		#FFFF00
#set $black			#000000

#class				#border		#bg	#text		#indicator	#child_border
client.focused			$pink		$pink	$text-color	$pink
client.focused_inactive		$pink		$pink	$text-color	$pink
client.unfocused		$pink		$pink	$text-color	$pink
client.urgent			$urgent-color	$pink	$urgent-color	$pink
client.placeholder		$black	$black	$text-color

#client.background - pick one color - bg color under the rendered window of the client - #000000 - black

#hides the border left and right
#hide_edge_borders smart

# Start i3bar to display a workspace bar (plus the system information i3status
# finds out, if available)
bar {
       #status_command i3status
	#current status bar: polypar
	i3bar_command /home/nicole/.config/polybar/launch.sh
		
}

# Locks screen with i3lock
bindsym $mod+Shift+x exec i3lock -i /home/nicole/Pictures/portal_lockscreen.png

# Audio Controls
# increase sound
bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5%
# decrease sound
bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5%
# mute sound
bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle

# Screen brightness
# increase brightness
bindsym XF86MonBrightnessUp exec xbacklight -inc 5
# decrease brightness
bindsym XF86MonBrightnessDown exec xbacklight -dec 5

# Touchpad
bindsym XF86TouchpadToggle exec ./toggletouchpad.sh

# Set Wallpaper
exec_always feh --no-startup-id --bg-scale /home/nicole/Pictures/wallpaper2.jpg

# make opacity stuff possible
exec_always compton -f

# i3-gaps configuration
gaps inner 10
gaps outer 10

# Hide mouse
exec_always unclutter &
exec_always xbanish 

# Take screenshots and save them to /home/nicole/Pictures/Screenshots
bindsym --release $mod+y exec scrot '%d-%m-%Y-%S.png' -e 'mv $f /home/nicole/Pictures/Screenshots'
bindsym --release $mod+Shift+y exec scrot -s '%d-%m-%Y-%S_s.png' -e 'mv $f /home/nicole/Pictures/Screenshots'

# Redshift a.k.a. stop hurting my eyes plz
exec_always redshift -l 47:22 

# Locks screen after inactivity 
# exec --no-startup-ip xautolock -time 4 -locker "i3lock-wrapper -l"

# Locks screen on suspend
# see: /etc/systemd/system/i3lock.service file

#If I want to stop the focus following my cursor
#focus_follows_mouse no
