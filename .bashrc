....
  fi
fi
#end file .bashrc, we can add commands there.
#make a copy(cp /home/user.bashrc /home/user/.bashrc.backup) before start
#if you delete .bashrc file, you can recover it with follow command:
#cp /etc/skel/.bashrc /home/user/.bashrc

#my commands at terminal open
acpi
echo "!!! GIT PULL !!!"

#my aliases
alias update--system='sudo apt-get clean && sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove'
alias intellij='sh /home/stencio/idea-IU-243.22562.145/bin/idea.sh'
alias xampp='sudo /opt/lampp/manager-linux-x64.run'
alias umlet='sh /home/stencio/Umlet/umlet.sh'
alias git--commit--all='git add . && git commit -m "git all (laptop 128GB)" && git push'
alias latrh='ls -latrh'
alias disable-keyboard='xinput disable "AT Translated Set 2 keyboard"'

# Aliases from Openbox
alias default="~/.fehbg && make xset-no-screensaver"
alias default_not_minimal="~/.fehbg && make xset-no-screensaver && make panel"
alias app-finder-openbox-helper="xfce4-appfinder"
alias lock-screen="cinnamon-screensaver-lock-dialog"

alias update="sudo apt-get clean && sudo apt-get update && sudo apt-get dist-upgrade && sudo apt-get autoremove"

alias 1280x720="xrandr --output eDP-1 --mode 1280x720"
alias 1366x768="xrandr --output eDP-1 --mode 1366x768"

alias umlet="~/Umlet/umlet.sh"
alias intellij="~/idea-IU-243.22562.145/bin/idea.sh"

alias status-pc="watch make pc"
alias pc="date && acpi && free -h && df -h"

alias audio='echo "___press q to exit NOT use ctrl+C___" && sleep 1 && pulsemixer'

alias redshift="redshift -O 3000"
alias redshiftq="redshift -x"

alias brightness='echo "!!!DO NOT USE THE MAX OR MIN RANGE FOR CAUTION!!!" && echo "to know range, go to ../intel_backlight and watch files" && sudo nano /sys/class/backlight/acpi_video0/brightness'

alias xset-no-screensaver="xset s off && xset -dpms && xset q"

alias background='echo "in /etc/profile.d stanno script che vengono eseguiti al login" && feh --bg-scale ~/Pictures/akatsuki-pictures-6vgzl0pobhu2n6w1.jpg'

alias monitor="arandr"
alias disable-touchpad="xinput disable 'ETPS/2 Elantech Touchpad'"
alias panel="xfce4-panel &"

alias xampp='echo "link xampp ubuntu" && echo "https://wiki.ubuntu-it.org/Server/Xampp" && echo "avviare xampp : sudo /opt/lampp/xampp start" && echo "avviare gui xampp : sudo /opt/lampp/manager-linux-x64.run"'

alias wifi="nmtui"
alias cpu="sudo cpupower-gui"
alias disable-keyboard="xinput disable 'AT Translated Set 2 keyboard'"

