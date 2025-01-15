....
  fi
fi
#end file .bashrc, we can add commands there.
#make a copy(cp /home/user.bashrc /home/user/.bashrc.backup) before start
#if you delete .bashrc file, you can recover it with follow command:
#cp /etc/skel/.bashrc /home/user/.bashrc

#i used "mmm" to differentiate commands

#############################################aliases openbox
# Default commands
alias mmmdefault='./.fehbg; xset s off; xset -dpms; xset q'
alias mmmdefault_2='xrandr --output LVDS --primary --mode 1366x768 --pos 1600x132 --rotate normal --output HDMI-0 --off --output VGA-0 --mode 1600x900 --pos 0x0 --rotate normal; ./.fehbg; xset s off; xset -dpms; xset q'

# Application shortcuts
alias mmmappfinder='xfce4-appfinder'
alias mmmlockscreen='cinnamon-screensaver-lock-dialog'

# Update system
alias mmmupdate='sudo apt-get clean; sudo apt-get update; sudo apt-get dist-upgrade; sudo apt-get autoremove; flatpak update; sudo snap refresh'

# Screen resolutions
alias mmm1280x720='xrandr --output eDP-1 --mode 1280x720'
alias mmm1366x768='xrandr --output eDP-1 --mode 1366x768'

# Application launchers
alias mmmumlet='./home/stencio/Umlet/umlet.sh'
alias mmmdata-grip='./home/stencio/DataGrip-2024.3.3/bin/datagrip.sh'
alias mmmintellij='./home/stencio/idea-IU-243.22562.145/bin/idea.sh'

# System status
alias mmmstatus_pc='watch "date; acpi; free -h"'

# Audio management
alias mmmaudio='echo "press q to exit"; sleep 1; pulsemixer'

# Redshift commands
alias mmmredshift='redshift -O 3000'
alias mmmredshiftq='redshift -x'

# Brightness adjustment
alias mmmbrightness='echo "!!!DO NOT USE THE MAX OR MIN RANGE FOR CAUTION!!!" && echo "to know range, go to ../intel_backlight and watch files" && sudo nano /sys/class/backlight/acpi_video0/brightness'

# Background management
alias mmmset_background='echo "in /etc/profile.d stanno script che vengono eseguiti al login" && feh --bg-scale ~/Pictures/akatsuki-pictures-6vgzl0pobhu2n6w1.jpg'

# Monitor settings
alias mmmmonitor='arandr'

# Disable touchpad
alias mmmdisable_touchpad='xinput disable "ETPS/2 Elantech Touchpad"'

# Tint2 panel
alias mmmpanel='tint2'

# XAMPP management
alias mmmxampp='echo "link xampp ubuntu"; echo "https://wiki.ubuntu-it.org/Server/Xampp"; echo "avviare xampp : sudo /opt/lampp/xampp start"; echo "avviare gui xampp : sudo /opt/lampp/manager-linux-x64.run"'

# WiFi management
alias mmmwifi='nmtui'

# CPU management
alias mmmcpu='sudo cpupower-gui'
